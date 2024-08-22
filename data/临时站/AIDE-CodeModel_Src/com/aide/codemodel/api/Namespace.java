package com.aide.codemodel.api;

import java.io.IOException;

import com.aide.codemodel.abstraction.Language;

import com.aide.codemodel.api.collections.MapOfInt;
import com.aide.codemodel.api.collections.SetOf;
import com.aide.codemodel.api.collections.SetOfFileEntry;
import com.aide.codemodel.api.collections.SetOfInt;
import com.aide.codemodel.api.collections.StoreInputStream;
import com.aide.codemodel.api.collections.StoreOutputStream;
import com.aide.codemodel.api.excpetions.UnknownEntityException;

public final class Namespace extends Entity {
    private int entity;
    private final EntitySpace space;
    private final IdentifierSpace identifiers;
    private final FileSpace filespace;
    private int identifier;
    private Namespace enclosingNamespace;
    private boolean exists;
    private MapOfInt<Namespace> memberNamespaces;
    private MapOfInt<ClassType> memberClassTypes;
    private SetOfFileEntry memberFiles;
    private SetOfInt assemblies;
    private MapOfInt<ClassType> memberClassTypesCaseInsensitive;
    
    public Namespace(EntitySpace space, IdentifierSpace identifiers, FileSpace filespace) {
        super(filespace, space);
        this.space = space;
        this.identifiers = identifiers;
        this.filespace = filespace;
    }
    
    public Namespace(EntitySpace space, IdentifierSpace identifiers, FileSpace filespace, int identifier, Namespace enclosingPackage) {
        super(filespace, space);
        this.space = space;
        this.identifiers = identifiers;
        this.filespace = filespace;
        this.identifier = identifier;
        this.entity = space.declareEntity(this);
        this.enclosingNamespace = enclosingPackage;
        this.exists = enclosingPackage == null;
    }

    @Override
    public void load(StoreInputStream stream) throws IOException {
        super.load(stream);
        this.identifier = stream.readInt();
        this.entity = stream.readInt();
        this.enclosingNamespace = (Namespace) this.space.getEntity(stream.readInt());
        this.exists = stream.readBoolean();
        if (stream.readBoolean()) {
            this.memberNamespaces = new MapOfInt<>(this.space, stream);
        }

        if (stream.readBoolean()) {
            this.memberClassTypes = new MapOfInt<>(this.space, stream);
        }

        if (stream.readBoolean()) {
            this.memberFiles = new SetOfFileEntry(this.filespace, stream);
        }

        if (stream.readBoolean()) {
            this.assemblies = new SetOfInt(stream);
        }
    }

    @Override
    public void store(StoreOutputStream stream) throws IOException {
        super.store(stream);
        stream.writeInt(this.identifier);
        stream.writeInt(this.entity);
        stream.writeInt(this.space.getID(this.enclosingNamespace));
        stream.writeBoolean(this.exists);
        stream.writeBoolean(this.memberNamespaces != null);
        if (this.memberNamespaces != null) {
            this.memberNamespaces.store(stream);
        }

        stream.writeBoolean(this.memberClassTypes != null);
        if (this.memberClassTypes != null) {
            this.memberClassTypes.store(stream);
        }

        stream.writeBoolean(this.memberFiles != null);
        if (this.memberFiles != null) {
            this.memberFiles.store(stream);
        }

        stream.writeBoolean(this.assemblies != null);
        if (this.assemblies != null) {
            this.assemblies.store(stream);
        }
    }

    public void invalidate() {
        if (this.memberFiles != null) {
            this.memberFiles.clear();
        }

        if (this.memberClassTypes != null) {
            this.memberClassTypes.clear();
        }

        if (this.assemblies != null) {
            this.assemblies.clear();
        }

        this.exists = false;
        this.memberClassTypesCaseInsensitive = null;
    }

    @Override
    public int getIdentifier() {
        return this.identifier;
    }

    public void declareExists(FileEntry file) {
        int assembly = file.getAssembly();

        for (Namespace p = this.enclosingNamespace; p != null; p = p.enclosingNamespace) {
            p.exists = true;
            if (p.assemblies == null) {
                p.assemblies = new SetOfInt();
            }

            p.assemblies.put(assembly);
        }

        if (this.memberFiles == null) {
            this.memberFiles = new SetOfFileEntry(this.filespace);
        }

        this.memberFiles.put(file);
        if (this.assemblies == null) {
            this.assemblies = new SetOfInt();
        }

        this.assemblies.put(assembly);
        this.exists = true;
    }
    
    public void declareMemberClassType(int identifier, ClassType classtype) {
        if (this.memberClassTypes == null) {
            this.memberClassTypes = new MapOfInt<>(this.space);
        }

        this.memberClassTypes.insert(identifier, classtype);
    }

    public Namespace getMemberNamespace(int identifier) {
        if (this.memberNamespaces == null) {
            this.memberNamespaces = new MapOfInt<>(this.space);
        }

        if (!this.memberNamespaces.contains(identifier)) {
            Namespace p = new Namespace(this.space, this.identifiers, this.filespace, identifier, this);
            this.memberNamespaces.put(identifier, p);
            return p;
        } else {
            return this.memberNamespaces.get(identifier);
        }
    }

    public Namespace getEnclosingNamespace() {
        return this.enclosingNamespace;
    }

    @Override
    public Language getLanguage() {
        this.space.loadNamespaces();
        if (memberFiles != null && memberFiles.size() > 0 && memberFiles.get().getCodeModel() != null && memberFiles.get().getCodeModel().getLanguages().size() > 0) {
            return memberFiles.get().getCodeModel().getLanguages().get(0);
        }
        if (memberNamespaces != null && memberNamespaces.size() > 0) {
            memberNamespaces.DEFAULT_ITERATOR.init();
            while (memberNamespaces.DEFAULT_ITERATOR.hasMoreElements()) {
                Language language = memberNamespaces.DEFAULT_ITERATOR.nextValue().getLanguage();
                if (language != null)
                    return language;
            }
        }
        return null;
    }

    public boolean isRoot() {
        return this.enclosingNamespace == null;
    }

    public SetOf<Namespace> getAllMemberNamespaces() {
        this.space.loadNamespaces();
        SetOf<Namespace> pakages = new SetOf<>(this.space);
        if (this.memberNamespaces != null) {
            this.memberNamespaces.DEFAULT_ITERATOR.init();

            while (this.memberNamespaces.DEFAULT_ITERATOR.hasMoreElements()) {
                Namespace pakage = this.memberNamespaces.DEFAULT_ITERATOR.nextValue();
                if (pakage.exists) {
                    pakages.put(pakage);
                }
            }
        }

        return pakages;
    }

    public SetOf<ClassType> getAllMemberClassTypes() {
        this.space.loadNamespaces();
        SetOf<ClassType> types = new SetOf<>(this.space);
        if (this.memberClassTypes != null) {
            this.memberClassTypes.DEFAULT_ITERATOR.init();

            while (this.memberClassTypes.DEFAULT_ITERATOR.hasMoreElements()) {
                ClassType classtype = this.memberClassTypes.DEFAULT_ITERATOR.nextValue();
                types.put(classtype);
            }
        }

        return types;
    }

    public SetOfFileEntry getAllMemberFiles() {
        this.space.loadNamespaces();
        return this.memberFiles == null ? new SetOfFileEntry(this.filespace) : this.memberFiles;
    }

    public SetOf<ClassType> getAllPartialClassTypes(FileEntry file, int identifier) {
        this.space.loadNamespaces();
        SetOf<ClassType> types = null;
        if (this.memberClassTypes != null) {
            this.memberClassTypes.DEFAULT_ITERATOR.init(identifier);

            while (this.memberClassTypes.DEFAULT_ITERATOR.hasMoreElements()) {
                ClassType classtype = this.memberClassTypes.DEFAULT_ITERATOR.nextValue();
                if (classtype.isPartial() && classtype.isReferable(file)) {
                    if (types == null) {
                        types = new SetOf<>(this.space);
                    }

                    types.put(classtype);
                }
            }
        }

        return types;
    }

    public SetOfInt getAllAssemblies() {
        return this.assemblies == null ? new SetOfInt() : this.assemblies;
    }

    public Entity accessMember(FileEntry file, int identifier, boolean caseSensitive, int parameterTypeCount, Namespace referingPackage) throws UnknownEntityException {
        this.space.loadNamespaces();
        ClassType type = this.tryAccessMemberClassType(file, identifier, caseSensitive, parameterTypeCount, referingPackage);
        return type != null ? type : this.accessMemberNamespace(file, identifier, caseSensitive);
    }

    public ClassType accessMemberClassType(FileEntry file, int identifier, boolean caseSensitive, int parameterTypeCount, Namespace referingPackage) throws UnknownEntityException {
        this.space.loadNamespaces();
        ClassType type = this.tryAccessMemberClassType(file, identifier, caseSensitive, parameterTypeCount, referingPackage);
        if (type != null) {
            return type;
        } else {
            throw new UnknownEntityException();
        }
    }

    private ClassType tryAccessMemberClassType(FileEntry file, int identifier, boolean caseSensitive, int parameterTypeCount, Namespace referingPackage) {
        if (this.memberClassTypes == null) {
            return null;
        } else {
            int lookupIdentifier = identifier;
            MapOfInt<ClassType> lookupTypes = this.memberClassTypes;
            if (!caseSensitive) {
                if (this.memberClassTypesCaseInsensitive == null) {
                    this.memberClassTypesCaseInsensitive = new MapOfInt<>(this.space);
                    this.memberClassTypes.DEFAULT_ITERATOR.init();

                    while (this.memberClassTypes.DEFAULT_ITERATOR.hasMoreElements()) {
                        int ident = this.identifiers.toUpperCase(this.memberClassTypes.DEFAULT_ITERATOR.nextKey());
                        ClassType type = this.memberClassTypes.DEFAULT_ITERATOR.nextValue();
                        this.memberClassTypesCaseInsensitive.insert(ident, type);
                    }
                }

                lookupIdentifier = this.identifiers.toUpperCase(identifier);
                lookupTypes = this.memberClassTypesCaseInsensitive;
            }

            ClassType foundtype = null;
            if (lookupTypes.contains(lookupIdentifier)) {
                lookupTypes.DEFAULT_ITERATOR.init(lookupIdentifier);

                while (lookupTypes.DEFAULT_ITERATOR.hasMoreElements()) {
                    ClassType type = lookupTypes.DEFAULT_ITERATOR.nextValue();
                    if (type.isApplicable(file, parameterTypeCount) && type.isVisible(referingPackage) && type.isReferable(file)) {
                        if (foundtype == null) {
                            foundtype = type;
                        } else if (!this.filespace.hasHigherPriority(file, foundtype.getFile(), type.getFile())
                                && this.filespace.hasHigherPriority(file, type.getFile(), foundtype.getFile())) {
                            foundtype = type;
                        }
                    }
                }
            }

            return foundtype;
        }
    }

    public boolean existsMemberClassType(FileEntry file, int identifier, boolean caseSensitive, int parameterTypeCount, Namespace referingPackage) {
        this.space.loadNamespaces();
        if (this.memberClassTypes != null) {
            int lookupIdentifier = identifier;
            MapOfInt<ClassType> lookupTypes = this.memberClassTypes;
            if (!caseSensitive) {
                if (this.memberClassTypesCaseInsensitive == null) {
                    this.memberClassTypesCaseInsensitive = new MapOfInt<>(this.space);
                    this.memberClassTypes.DEFAULT_ITERATOR.init();

                    while (this.memberClassTypes.DEFAULT_ITERATOR.hasMoreElements()) {
                        int ident = this.identifiers.toUpperCase(this.memberClassTypes.DEFAULT_ITERATOR.nextKey());
                        ClassType type = this.memberClassTypes.DEFAULT_ITERATOR.nextValue();
                        this.memberClassTypesCaseInsensitive.insert(ident, type);
                    }
                }

                lookupIdentifier = this.identifiers.toUpperCase(identifier);
                lookupTypes = this.memberClassTypesCaseInsensitive;
            }

            if (lookupTypes.contains(lookupIdentifier)) {
                lookupTypes.DEFAULT_ITERATOR.init(lookupIdentifier);

                while (lookupTypes.DEFAULT_ITERATOR.hasMoreElements()) {
                    ClassType type = lookupTypes.DEFAULT_ITERATOR.nextValue();
                    if (type.isApplicable(file, parameterTypeCount) && type.isVisible(referingPackage) && type.isReferable(file)) {
                        return true;
                    }
                }
            }

        }
        return false;
    }

    public boolean existsMemberClassType(int identifier, boolean caseSensitive) {
        this.space.loadNamespaces();
        if (this.memberClassTypes == null) {
            return false;
        } else {
            int lookupIdentifier = identifier;
            MapOfInt<ClassType> lookupTypes = this.memberClassTypes;
            if (!caseSensitive) {
                if (this.memberClassTypesCaseInsensitive == null) {
                    this.memberClassTypesCaseInsensitive = new MapOfInt<>(this.space);
                    this.memberClassTypes.DEFAULT_ITERATOR.init();

                    while (this.memberClassTypes.DEFAULT_ITERATOR.hasMoreElements()) {
                        int ident = this.identifiers.toUpperCase(this.memberClassTypes.DEFAULT_ITERATOR.nextKey());
                        ClassType type = this.memberClassTypes.DEFAULT_ITERATOR.nextValue();
                        this.memberClassTypesCaseInsensitive.insert(ident, type);
                    }
                }

                lookupIdentifier = this.identifiers.toUpperCase(identifier);
                lookupTypes = this.memberClassTypesCaseInsensitive;
            }

            return lookupTypes.contains(lookupIdentifier);
        }
    }

    public boolean existsMemberNamespace(FileEntry file, int identifier, boolean caseSensitive) {
        this.space.loadNamespaces();
        Namespace memberPakage = this.getMemberNamespace(identifier);
        if (memberPakage.exists) {
            SetOfInt assemblies = memberPakage.getAllAssemblies();
            assemblies.DEFAULT_ITERATOR.init();

            while (assemblies.DEFAULT_ITERATOR.hasMoreElements()) {
                int assembly = assemblies.DEFAULT_ITERATOR.nextKey();
                if (this.filespace.isReferableFrom(assembly, file.getAssembly())) {
                    return true;
                }
            }
        }

        return false;
    }

    public Namespace accessMemberNamespace(FileEntry file, int identifier, boolean caseSensitive) throws UnknownEntityException {
        this.space.loadNamespaces();
        Namespace memberPakage = this.getMemberNamespace(identifier);
        if (memberPakage.exists) {
            SetOfInt assemblies = memberPakage.getAllAssemblies();
            assemblies.DEFAULT_ITERATOR.init();

            while (assemblies.DEFAULT_ITERATOR.hasMoreElements()) {
                int assembly = assemblies.DEFAULT_ITERATOR.nextKey();
                if (this.filespace.isReferableFrom(assembly, file.getAssembly())) {
                    return memberPakage;
                }
            }
        }

        throw new UnknownEntityException();
    }

    @Override
    public int getID() {
        return this.entity;
    }
}
