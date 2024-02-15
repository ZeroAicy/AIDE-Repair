.class public Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aide/codemodel/api/abstraction/CodeModel;


# annotations
.annotation runtime Labcd/cy;
    clazz = -0x7f60a685467f208L
    container = -0x7f60a685467f208L
    user = true
.end annotation


# static fields
.field private static synthetic EQ:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field

.field private static synthetic tp:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field


# instance fields
.field private final DW:Lcom/aide/codemodel/language/classfile/JavaBinaryLanguage;
    .annotation runtime Labcd/dy;
        field = -0x3889e489f701282dL
    .end annotation
.end field

.field private final FH:Lcom/aide/codemodel/language/java/JSharpCommentsLanguage;
    .annotation runtime Labcd/dy;
        field = 0x55008b2a81db9bb8L
    .end annotation
.end field

.field private Hw:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;
    .annotation runtime Labcd/dy;
        field = -0x12f066b52f2433a8L
    .end annotation
.end field

.field private VH:Labcd/g6;
    .annotation runtime Labcd/dy;
        field = -0x23ee02aea3f02315L
    .end annotation
.end field

.field private Zo:Lcom/aide/codemodel/language/java/JavaParser;
    .annotation runtime Labcd/dy;
        field = -0x1882f113bcacab60L
    .end annotation
.end field

.field private gn:Lcom/aide/codemodel/language/java/JavaCompiler;
    .annotation runtime Labcd/dy;
        field = 0x1b6758c74f62f570L
    .end annotation
.end field

.field private final j6:Lcom/aide/codemodel/api/Model;
    .annotation runtime Labcd/dy;
        field = 0x1126d74cc4c0afb0L
    .end annotation
.end field

.field private u7:Lcom/aide/codemodel/language/java/JavaDebugger;
    .annotation runtime Labcd/dy;
        field = -0x308580b0402049e0L
    .end annotation
.end field

.field private v5:Labcd/t6;
    .annotation runtime Labcd/dy;
        field = -0x1845c8434e564f93L
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/codemodel/api/Model;)V
    .registers 21
    .annotation runtime Labcd/ey;
        method = -0x1f418e4413f9f95L
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const-wide v4, 0xf926805e64a3e9L

    :try_start_a
    sget-boolean v0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v0, :cond_11

    invoke-static {v4, v5, v3, v2}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v2, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->j6:Lcom/aide/codemodel/api/Model;

    .line 3
    new-instance v0, Lcom/aide/codemodel/language/classfile/JavaBinaryLanguage;

    invoke-direct {v0, v2}, Lcom/aide/codemodel/language/classfile/JavaBinaryLanguage;-><init>(Lcom/aide/codemodel/api/Model;)V

    iput-object v0, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->DW:Lcom/aide/codemodel/language/classfile/JavaBinaryLanguage;

    .line 4
    new-instance v0, Lcom/aide/codemodel/language/java/JSharpCommentsLanguage;

    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/aide/codemodel/language/java/JSharpCommentsLanguage;-><init>(Lcom/aide/codemodel/api/Model;Z)V

    iput-object v0, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->FH:Lcom/aide/codemodel/language/java/JSharpCommentsLanguage;

    .line 5
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getClassFilePreProcessor()Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;

    move-result-object v0

    iput-object v0, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->Hw:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;

    if-eqz v2, :cond_74

    .line 6
    new-instance v0, Lcom/aide/codemodel/language/java/JavaCompiler;

    iget-object v6, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->DW:Lcom/aide/codemodel/language/classfile/JavaBinaryLanguage;

    invoke-direct {v0, v2, v6}, Lcom/aide/codemodel/language/java/JavaCompiler;-><init>(Lcom/aide/codemodel/api/Model;Lcom/aide/codemodel/language/java/JavaLanguage;)V

    iput-object v0, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->gn:Lcom/aide/codemodel/language/java/JavaCompiler;

    .line 7
    new-instance v0, Lcom/aide/codemodel/language/java/JavaDebugger;

    iget-object v6, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->DW:Lcom/aide/codemodel/language/classfile/JavaBinaryLanguage;

    invoke-direct {v0, v2, v6, v1}, Lcom/aide/codemodel/language/java/JavaDebugger;-><init>(Lcom/aide/codemodel/api/Model;Lcom/aide/codemodel/language/java/JavaLanguage;Lcom/aide/codemodel/api/abstraction/CodeModel;)V

    iput-object v0, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->u7:Lcom/aide/codemodel/language/java/JavaDebugger;

    .line 8
    new-instance v0, Labcd/t6;

    iget-object v8, v2, Lcom/aide/codemodel/api/Model;->identifierSpace:Lcom/aide/codemodel/api/IdentifierSpace;

    iget-object v9, v2, Lcom/aide/codemodel/api/Model;->Mr:Lcom/aide/codemodel/api/ErrorTable;

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->DW:Lcom/aide/codemodel/language/classfile/JavaBinaryLanguage;

    iget-object v12, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->FH:Lcom/aide/codemodel/language/java/JSharpCommentsLanguage;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Labcd/t6;-><init>(Lcom/aide/codemodel/api/IdentifierSpace;Lcom/aide/codemodel/api/ErrorTable;ZLcom/aide/codemodel/api/abstraction/Language;Lcom/aide/codemodel/api/abstraction/Language;)V

    iput-object v0, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->v5:Labcd/t6;

    .line 9
    new-instance v0, Lcom/aide/codemodel/language/java/JavaParser;

    iget-object v14, v2, Lcom/aide/codemodel/api/Model;->identifierSpace:Lcom/aide/codemodel/api/IdentifierSpace;

    iget-object v15, v2, Lcom/aide/codemodel/api/Model;->Mr:Lcom/aide/codemodel/api/ErrorTable;

    iget-object v6, v2, Lcom/aide/codemodel/api/Model;->entitySpace:Lcom/aide/codemodel/api/EntitySpace;

    iget-object v7, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->DW:Lcom/aide/codemodel/language/classfile/JavaBinaryLanguage;

    invoke-virtual {v7}, Lcom/aide/codemodel/language/java/JavaLanguage;->getSyntax()Lcom/aide/codemodel/api/abstraction/Syntax;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Lcom/aide/codemodel/language/java/JavaSyntax;

    const/16 v18, 0x1

    move-object v13, v0

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v18}, Lcom/aide/codemodel/language/java/JavaParser;-><init>(Lcom/aide/codemodel/api/IdentifierSpace;Lcom/aide/codemodel/api/ErrorTable;Lcom/aide/codemodel/api/EntitySpace;Lcom/aide/codemodel/language/java/JavaSyntax;Z)V

    iput-object v0, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->Zo:Lcom/aide/codemodel/language/java/JavaParser;

    .line 10
    new-instance v0, Labcd/g6;

    invoke-direct {v0, v2}, Labcd/g6;-><init>(Lcom/aide/codemodel/api/Model;)V

    iput-object v0, v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->VH:Labcd/g6;
    :try_end_74
    .catchall {:try_start_a .. :try_end_74} :catchall_75

    :cond_74
    return-void

    :catchall_75
    move-exception v0

    .line 11
    sget-boolean v6, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v6, :cond_7d

    invoke-static {v0, v4, v5, v3, v2}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    throw v0
.end method


# virtual methods
.method public closeArchive()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x11873672c5bdb1b8L
    .end annotation

    const-wide v0, 0x2ff8cc8c1aa9d6c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->Hw:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;

    invoke-virtual {v2}, Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;->VH()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public fillSyntaxTree(Lcom/aide/codemodel/api/FileEntry;Ljava/io/Reader;Ljava/util/Map;)V
    .registers 14
    .annotation runtime Labcd/ey;
        method = -0xb060e0a6df3192cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/codemodel/api/FileEntry;",
            "Ljava/io/Reader;",
            "Ljava/util/Map<",
            "Lcom/aide/codemodel/api/abstraction/Language;",
            "Lcom/aide/codemodel/api/SyntaxTreeSytles;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x9dc712d8819d6e0L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    iget-object v1, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->v5:Labcd/t6;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->DW:Lcom/aide/codemodel/language/classfile/JavaBinaryLanguage;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/aide/codemodel/api/SyntaxTreeSytles;

    iget-object v0, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->FH:Lcom/aide/codemodel/language/java/JSharpCommentsLanguage;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/aide/codemodel/api/SyntaxTreeSytles;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v9}, Labcd/t6;->Zo(Lcom/aide/codemodel/api/FileEntry;Ljava/io/Reader;ZZZZLcom/aide/codemodel/api/SyntaxTreeSytles;Lcom/aide/codemodel/api/SyntaxTreeSytles;)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v1, :cond_40

    const-wide v2, 0x9dc712d8819d6e0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public fillSyntaxTree(Lcom/aide/codemodel/api/FileEntry;Ljava/io/Reader;Ljava/util/Map;Z)V
    .registers 16
    .annotation runtime Labcd/ey;
        method = -0x12bdb02c62aace33L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/codemodel/api/FileEntry;",
            "Ljava/io/Reader;",
            "Ljava/util/Map<",
            "Lcom/aide/codemodel/api/abstraction/Language;",
            "Lcom/aide/codemodel/api/SyntaxTree;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v0, :cond_15

    const-wide v1, -0x3069cd5206115f9L

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->J0(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_15
    iget-object v0, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->j6:Lcom/aide/codemodel/api/Model;

    iget-object v0, v0, Lcom/aide/codemodel/api/Model;->U2:Labcd/i2;

    invoke-virtual {v0}, Labcd/i2;->j6()Lcom/aide/codemodel/api/SyntaxTreeSytles;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->j6:Lcom/aide/codemodel/api/Model;

    iget-object v1, v1, Lcom/aide/codemodel/api/Model;->U2:Labcd/i2;

    invoke-virtual {v1}, Labcd/i2;->j6()Lcom/aide/codemodel/api/SyntaxTreeSytles;

    move-result-object v10

    .line 3
    iget-object v1, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->v5:Labcd/t6;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->DW:Lcom/aide/codemodel/language/classfile/JavaBinaryLanguage;

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iget-object v2, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->FH:Lcom/aide/codemodel/language/java/JSharpCommentsLanguage;

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    move-object v2, p1

    move-object v3, p2

    move-object v8, v0

    move-object v9, v10

    invoke-virtual/range {v1 .. v9}, Labcd/t6;->Zo(Lcom/aide/codemodel/api/FileEntry;Ljava/io/Reader;ZZZZLcom/aide/codemodel/api/SyntaxTreeSytles;Lcom/aide/codemodel/api/SyntaxTreeSytles;)V

    .line 4
    iget-object v1, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->DW:Lcom/aide/codemodel/language/classfile/JavaBinaryLanguage;

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 5
    iget-object v1, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->Zo:Lcom/aide/codemodel/language/java/JavaParser;

    iget-object v2, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->DW:Lcom/aide/codemodel/language/classfile/JavaBinaryLanguage;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/codemodel/api/SyntaxTree;

    invoke-virtual {v1, v0, p1, p4, v2}, Lcom/aide/codemodel/language/java/JavaParser;->v5(Lcom/aide/codemodel/api/SyntaxTreeSytles;Lcom/aide/codemodel/api/FileEntry;ZLcom/aide/codemodel/api/SyntaxTree;)V

    .line 6
    :cond_51
    iget-object v1, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->j6:Lcom/aide/codemodel/api/Model;

    iget-object v1, v1, Lcom/aide/codemodel/api/Model;->U2:Labcd/i2;

    invoke-virtual {v1, v0}, Labcd/i2;->DW(Lcom/aide/codemodel/api/SyntaxTreeSytles;)V

    .line 7
    iget-object v0, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->FH:Lcom/aide/codemodel/language/java/JSharpCommentsLanguage;

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 8
    iget-object v0, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->VH:Labcd/g6;

    iget-object v1, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->FH:Lcom/aide/codemodel/language/java/JSharpCommentsLanguage;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/codemodel/api/SyntaxTree;

    invoke-virtual {v0, v10, p1, p4, v1}, Labcd/g6;->j6(Lcom/aide/codemodel/api/SyntaxTreeSytles;Lcom/aide/codemodel/api/FileEntry;ZLcom/aide/codemodel/api/SyntaxTree;)V

    .line 9
    :cond_6d
    iget-object v0, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->j6:Lcom/aide/codemodel/api/Model;

    iget-object v0, v0, Lcom/aide/codemodel/api/Model;->U2:Labcd/i2;

    invoke-virtual {v0, v10}, Labcd/i2;->DW(Lcom/aide/codemodel/api/SyntaxTreeSytles;)V
    :try_end_74
    .catchall {:try_start_0 .. :try_end_74} :catchall_75

    return-void

    :catchall_75
    move-exception v0

    .line 10
    sget-boolean v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v1, :cond_8c

    const-wide v2, -0x3069cd5206115f9L

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/iy;->a8(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8c
    throw v0
.end method

.method public getArchiveEntries(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x2e055733c8ee51c0L
    .end annotation

    const-wide v0, -0x227c36dc16466088L  # -3.0159176525487935E142

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->Hw:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;

    invoke-virtual {v2, p1}, Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;->Ws(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getArchiveEntryReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x27db681b82966b05L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x99c4773441485e9L  # -1.9405860942000075E262

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    iget-object v0, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->Hw:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;->QX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-object p1

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v1, :cond_29

    const-wide v2, -0x99c4773441485e9L  # -1.9405860942000075E262

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method public getArchiveVersion(Ljava/lang/String;)J
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x6cbab7820362740L
    .end annotation

    const-wide v0, -0x533fd3632ec037b0L  # -3.877001590605123E-93

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->Hw:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;

    invoke-virtual {v2, p1}, Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;->XL(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-wide v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public getCompiler()Lcom/aide/codemodel/api/abstraction/Compiler;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x78b179d5fd29e0bL
    .end annotation

    const-wide v0, 0x28468ea6eebc918dL

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v0, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->gn:Lcom/aide/codemodel/language/java/JavaCompiler;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getDebugger()Lcom/aide/codemodel/api/abstraction/Debugger;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x2c854cd8ee0477ebL
    .end annotation

    const-wide v0, -0x2eff6155f889acd7L  # -1.5765006527500153E82

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v0, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->u7:Lcom/aide/codemodel/language/java/JavaDebugger;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getDefaultFilePatterns()[Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x105b7675dc4e6cL
    .end annotation

    const-wide v0, 0x1527cd39aed95f78L  # 9.267023420352514E-207

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "*.jar"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "*.war"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "*.ear"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "*.zip"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "*.class"

    aput-object v4, v2, v3
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-object v2

    :catchall_29
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public getExtendFilePatterns()[Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x7f942952c4680bL
    .end annotation

    const-wide v0, 0x5b9b2f2743149f11L  # 1.9295433638301426E133

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-object v0

    :catchall_10
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public getLanguages()Ljava/util/List;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x11d08f8531cde41fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/codemodel/api/abstraction/Language;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x2f8ffb9a963984a7L  # 1.3486771955858917E-79

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v3, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->DW:Lcom/aide/codemodel/language/classfile/JavaBinaryLanguage;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v3, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->FH:Lcom/aide/codemodel/language/java/JSharpCommentsLanguage;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object v2

    :catchall_1c
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x4c72bddacccdd60L
    .end annotation

    const-wide v0, 0x16b9f9b67d002d20L

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const-string v0, "Java Binary"
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getPreprocessor()Lcom/aide/codemodel/api/abstraction/Preprocessor;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x2503a997669c664bL
    .end annotation

    const-wide v0, 0x249fabb83d90c269L

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public isSupportArchiveFile()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x26bcde31539a67dbL
    .end annotation

    const-wide v0, 0x25b9502af20a4915L  # 5.842895539883998E-127

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public processVersion(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0xa531c0645d32053L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x184d9b58acdb25a3L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    .line 1
    sget-boolean v1, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v1, :cond_1e

    const-wide v2, 0x184d9b58acdb25a3L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v0
.end method

.method public u7()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x367d443e92cd39b1L
    .end annotation

    const-wide v0, -0x108bd9ef47b6701dL  # -7.637014120246447E228

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public update()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0xd1c70626bcc9f1dL
    .end annotation

    const-wide v0, -0x4a5f660ea0b381dL

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->Hw:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;

    invoke-virtual {v2}, Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;->vJ()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/codemodel/language/classfile/JavaBinaryCodeModel;->EQ:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method
