package io.github.zeroaicy.dexlib.analysis;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nonnull;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.iface.ClassDef;
import org.jf.dexlib2.iface.DexFile;
import org.jf.dexlib2.rewriter.DexFileRewriter;
import org.jf.dexlib2.rewriter.Rewriter;
import org.jf.dexlib2.rewriter.RewriterUtils;
import org.jf.dexlib2.rewriter.Rewriters;

public class RevertDexFileRewriter extends DexFileRewriter{
	public RevertDexFileRewriter(@Nonnull Rewriters rewriters){
        super(rewriters);
    }
	@Override
	public DexFile rewrite(DexFile value){
		return new RewrittenDexFile(value);
	}


	public static <T> Set<T> rewriteSet(@Nonnull final Rewriter<T> rewriter,
                                        @Nonnull final Set<? extends T> set){
        return new AbstractSet<T>() {
            @Nonnull @Override public Iterator<T> iterator(){
                final Iterator<? extends T> iterator = set.iterator();

                return new Iterator<T>() {
					@Override public boolean hasNext(){
                        return iterator.hasNext();
                    }
					int count = 0, 
					size = set.size(),
					lastCount;
					
                    @Override public T next(){
						this.count++;
						if ( this.count - this.lastCount > this.size / 10 ){
							System.out.printf("已处理: %d %s\n", (this.count * 100) / this.size, "%") ;
							this.lastCount = this.count;
						}
						
                        T rewriteNullable = RewriterUtils.rewriteNullable(rewriter, iterator.next());
						if( !hasNext()){
							System.out.println("已处理: 100 %") ;
						}
						return rewriteNullable;
                    }

                    @Override public void remove(){
                        iterator.remove();
                    }
                };
            }

            @Override public int size(){
                return set.size();
            }
        };
    }
	protected class RewrittenDexFile implements DexFile{
        @Nonnull protected final DexFile dexFile;

        public RewrittenDexFile(@Nonnull DexFile dexFile){
            this.dexFile = dexFile;
        }

        @Override @Nonnull public Set<? extends ClassDef> getClasses(){
			return rewriteSet(rewriters.getClassDefRewriter(), dexFile.getClasses());
        }

        @Nonnull @Override public Opcodes getOpcodes(){
            return dexFile.getOpcodes();
        }
    }
}
