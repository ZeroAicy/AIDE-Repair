.class public Lcom/aide/codemodel/language/xml/XmlCodeModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aide/codemodel/api/abstraction/CodeModel;


# annotations
.annotation runtime Labcd/cy;
    clazz = -0x549ec5abfaccb2c8L
    container = -0x549ec5abfaccb2c8L
    user = true
.end annotation


# static fields
.field private static synthetic Zo:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field

.field private static synthetic v5:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field


# instance fields
.field private final DW:Lcom/aide/codemodel/language/xml/XmlLanguage;
    .annotation runtime Labcd/dy;
        field = 0x192d4e2a1b032c29L
    .end annotation
.end field

.field private FH:Lcom/aide/codemodel/api/LexerHelper;
    .annotation runtime Labcd/dy;
        field = 0x3ac6fc5801e48a5L
    .end annotation
.end field

.field private Hw:Lcom/aide/codemodel/language/xml/XmlParser;
    .annotation runtime Labcd/dy;
        field = 0x173bccb3f678cd94L
    .end annotation
.end field

.field private final j6:Lcom/aide/codemodel/api/Model;
    .annotation runtime Labcd/dy;
        field = 0x221d7f24f428b5e3L
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/codemodel/language/xml/XmlCodeModel;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/codemodel/api/Model;)V
    .registers 19
    .annotation runtime Labcd/ey;
        method = -0x11fca7b7d73ec88L
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide v3, 0x3ac3cee50a5aec73L  # 1.2800737839513547E-25

    const/4 v5, 0x0

    :try_start_a
    sget-boolean v0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

    if-eqz v0, :cond_11

    invoke-static {v3, v4, v5, v2}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v2, v1, Lcom/aide/codemodel/language/xml/XmlCodeModel;->j6:Lcom/aide/codemodel/api/Model;

    .line 3
    new-instance v0, Lcom/aide/codemodel/language/xml/XmlLanguage;

    const/4 v6, 0x1

    invoke-direct {v0, v2, v6}, Lcom/aide/codemodel/language/xml/XmlLanguage;-><init>(Lcom/aide/codemodel/api/Model;Z)V

    iput-object v0, v1, Lcom/aide/codemodel/language/xml/XmlCodeModel;->DW:Lcom/aide/codemodel/language/xml/XmlLanguage;

    if-eqz v2, :cond_54

    .line 4
    new-instance v0, Lcom/aide/codemodel/api/LexerHelper;

    iget-object v6, v2, Lcom/aide/codemodel/api/Model;->identifierSpace:Lcom/aide/codemodel/api/IdentifierSpace;

    iget-object v7, v2, Lcom/aide/codemodel/api/Model;->errorTable:Lcom/aide/codemodel/api/ErrorTable;

    iget-object v8, v1, Lcom/aide/codemodel/language/xml/XmlCodeModel;->DW:Lcom/aide/codemodel/language/xml/XmlLanguage;

    new-instance v9, Lcom/aide/codemodel/language/xml/XmlLexer;

    invoke-direct {v9, v5}, Lcom/aide/codemodel/language/xml/XmlLexer;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/aide/codemodel/api/LexerHelper;-><init>(Lcom/aide/codemodel/api/IdentifierSpace;Lcom/aide/codemodel/api/ErrorTable;Lcom/aide/codemodel/api/abstraction/Language;Lcom/aide/codemodel/api/Lexer;)V

    iput-object v0, v1, Lcom/aide/codemodel/language/xml/XmlCodeModel;->FH:Lcom/aide/codemodel/api/LexerHelper;

    .line 5
    new-instance v0, Lcom/aide/codemodel/language/xml/XmlParser;

    iget-object v6, v1, Lcom/aide/codemodel/language/xml/XmlCodeModel;->DW:Lcom/aide/codemodel/language/xml/XmlLanguage;

    invoke-virtual {v6}, Lcom/aide/codemodel/language/xml/XmlLanguage;->getCodeAnalyzer()Lcom/aide/codemodel/api/abstraction/CodeAnalyzer;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/aide/codemodel/language/xml/XmlCodeAnalyzer;

    iget-object v12, v2, Lcom/aide/codemodel/api/Model;->identifierSpace:Lcom/aide/codemodel/api/IdentifierSpace;

    iget-object v13, v2, Lcom/aide/codemodel/api/Model;->errorTable:Lcom/aide/codemodel/api/ErrorTable;

    iget-object v14, v2, Lcom/aide/codemodel/api/Model;->entitySpace:Lcom/aide/codemodel/api/EntitySpace;

    iget-object v6, v1, Lcom/aide/codemodel/language/xml/XmlCodeModel;->DW:Lcom/aide/codemodel/language/xml/XmlLanguage;

    invoke-virtual {v6}, Lcom/aide/codemodel/language/xml/XmlLanguage;->getSyntax()Lcom/aide/codemodel/api/abstraction/Syntax;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcom/aide/codemodel/language/xml/XmlSyntax;

    const/16 v16, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/aide/codemodel/language/xml/XmlParser;-><init>(Lcom/aide/codemodel/language/xml/XmlCodeAnalyzer;Lcom/aide/codemodel/api/IdentifierSpace;Lcom/aide/codemodel/api/ErrorTable;Lcom/aide/codemodel/api/EntitySpace;Lcom/aide/codemodel/language/xml/XmlSyntax;Z)V

    iput-object v0, v1, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Hw:Lcom/aide/codemodel/language/xml/XmlParser;
    :try_end_54
    .catchall {:try_start_a .. :try_end_54} :catchall_55

    :cond_54
    return-void

    :catchall_55
    move-exception v0

    .line 6
    sget-boolean v6, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v6, :cond_5d

    invoke-static {v0, v3, v4, v5, v2}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v0
.end method


# virtual methods
.method public closeArchive()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x3c2dd56e5d867af3L
    .end annotation

    const-wide v0, -0x34107a03bc38895L  # -7.726449508815494E292

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public fillSyntaxTree(Lcom/aide/codemodel/api/FileEntry;Ljava/io/Reader;Ljava/util/Map;)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = -0x8842005f0798f81L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/codemodel/api/FileEntry;",
            "Ljava/io/Reader;",
            "Ljava/util/Map<",
            "Lcom/aide/codemodel/api/abstraction/Language;",
            "Lcom/aide/codemodel/api/SyntaxTreeStyles;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

    if-eqz v0, :cond_10

    const-wide v1, 0xba00ef56ce67753L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    iget-object v1, p0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->FH:Lcom/aide/codemodel/api/LexerHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->DW:Lcom/aide/codemodel/language/xml/XmlLanguage;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/aide/codemodel/api/SyntaxTreeStyles;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/aide/codemodel/api/LexerHelper;->DW(Lcom/aide/codemodel/api/FileEntry;Ljava/io/Reader;ZZLcom/aide/codemodel/api/SyntaxTreeStyles;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v1, :cond_35

    const-wide v2, 0xba00ef56ce67753L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method

.method public fillSyntaxTree(Lcom/aide/codemodel/api/FileEntry;Ljava/io/Reader;Ljava/util/Map;Z)V
    .registers 14
    .annotation runtime Labcd/ey;
        method = -0x174e560538733380L
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
    sget-boolean v0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

    if-eqz v0, :cond_15

    const-wide v1, -0x90d717134b0af90L

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->J0(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_15
    iget-object v0, p0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->j6:Lcom/aide/codemodel/api/Model;

    iget-object v0, v0, Lcom/aide/codemodel/api/Model;->U2:Labcd/i2;

    invoke-virtual {v0}, Labcd/i2;->makeSyntaxTreeStyles()Lcom/aide/codemodel/api/SyntaxTreeStyles;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->FH:Lcom/aide/codemodel/api/LexerHelper;

    iget-object v2, p0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->DW:Lcom/aide/codemodel/language/xml/XmlLanguage;

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/aide/codemodel/api/LexerHelper;->DW(Lcom/aide/codemodel/api/FileEntry;Ljava/io/Reader;ZZLcom/aide/codemodel/api/SyntaxTreeStyles;)V

    .line 3
    iget-object v1, p0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Hw:Lcom/aide/codemodel/language/xml/XmlParser;

    iget-object v2, p0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->DW:Lcom/aide/codemodel/language/xml/XmlLanguage;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/codemodel/api/SyntaxTree;

    invoke-virtual {v1, v0, p1, p4, v2}, Lcom/aide/codemodel/language/xml/XmlParser;->v5(Lcom/aide/codemodel/api/SyntaxTreeStyles;Lcom/aide/codemodel/api/FileEntry;ZLcom/aide/codemodel/api/SyntaxTree;)V

    .line 4
    iget-object v1, p0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->j6:Lcom/aide/codemodel/api/Model;

    iget-object v1, v1, Lcom/aide/codemodel/api/Model;->U2:Labcd/i2;

    invoke-virtual {v1, v0}, Labcd/i2;->DW(Lcom/aide/codemodel/api/SyntaxTreeStyles;)V
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_41

    return-void

    :catchall_41
    move-exception v0

    .line 5
    sget-boolean v1, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v1, :cond_58

    const-wide v2, -0x90d717134b0af90L

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/iy;->a8(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v0
.end method

.method public getArchiveEntries(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x47b1631d56df7765L
    .end annotation

    const-wide v0, -0x237960a5c685d4f9L  # -5.261724023870304E137

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return-object p1

    :catchall_e
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getArchiveEntryReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x1880c91ae7fb04c8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x2fad94ed64894078L  # -8.53075182915758E78

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_12

    :cond_10
    const/4 p1, 0x0

    return-object p1

    :catchall_12
    move-exception v0

    .line 1
    sget-boolean v1, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v1, :cond_24

    const-wide v2, -0x2fad94ed64894078L  # -8.53075182915758E78

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method

.method public getArchiveVersion(Ljava/lang/String;)J
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x5137f88ee3f45fffL
    .end annotation

    const-wide v0, -0x574d42c79d44578dL  # -1.217506599190777E-112

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_f
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getCompiler()Lcom/aide/codemodel/api/abstraction/Compiler;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x382af5f0a058e3d4L
    .end annotation

    const-wide v0, -0x3ebd9083edd4b760L  # -2416376.1419459134

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

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
    sget-boolean v3, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getDebugger()Lcom/aide/codemodel/api/abstraction/Debugger;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x144258f43b683700L
    .end annotation

    const-wide v0, -0x1a7c9b59ecd5fc7cL  # -1.0059026952555318E181

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

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
    sget-boolean v3, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getDefaultFilePatterns()[Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x2c9ba6aad998326fL
    .end annotation

    const-wide v0, 0x51a32a70efdaa4cdL  # 1.8616387915703477E85

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "*.xml"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "*.xsl"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "*.xslt"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "*.xsd"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "*.*proj"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "*.resx"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "*.settings"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "*.config"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "*.tld"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "*.svg"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "*.classpath"

    aput-object v4, v2, v3

    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_45

    return-object v2

    :catchall_45
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4d
    throw v2
.end method

.method public getExtendFilePatterns()[Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1bf25427c7199850L
    .end annotation

    const-wide v0, -0x61b5f8c6e2fe9110L

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

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
    sget-boolean v3, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public getLanguages()Ljava/util/List;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x3bbbe572318063ecL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/codemodel/api/abstraction/Language;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x38ff873407f6fb0L  # -2.499398833379714E291

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v3, p0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->DW:Lcom/aide/codemodel/language/xml/XmlLanguage;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x3fa2cc11122caf1fL
    .end annotation

    const-wide v0, 0xae3925e87694b73L

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const-string v0, "XML"
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getPreprocessor()Lcom/aide/codemodel/api/abstraction/Preprocessor;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2cfaec4e9ffbd7d8L
    .end annotation

    const-wide v0, -0x4e97f7527cd669b8L

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

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
    sget-boolean v3, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public isSupportArchiveFile()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x52c36c4f2490ca20L
    .end annotation

    const-wide v0, 0xa76de0b3eaad348L  # 2.9745394999019277E-258

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

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
    sget-boolean v3, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public processVersion(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x18bb14b27a08b234L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x12ecc7075eca88e0L  # -2.650621678738176E217

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    .line 1
    sget-boolean v1, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v1, :cond_1e

    const-wide v2, -0x12ecc7075eca88e0L  # -2.650621678738176E217

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
        method = -0x73b95c9ed2884c0L
    .end annotation

    const-wide v0, 0x42f5f2125ed779f4L  # 3.8607095158979125E14

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

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
    sget-boolean v3, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public update()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2419b3eaaba138ecL
    .end annotation

    const-wide v0, -0x29a8d237b68dbe40L  # -8.505701034244347E107

    :try_start_5
    sget-boolean v2, Lcom/aide/codemodel/language/xml/XmlCodeModel;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/codemodel/language/xml/XmlCodeModel;->Zo:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method
