.class public Lcom/aide/ui/views/editor/EditorModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aide/ui/views/editor/v$a;


# annotations
.annotation runtime Labcd/cy;
    clazz = 0x3870c1ec1c0d226cL
    container = 0x9bc2c072ae09d4fL
    user = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/editor/EditorModel;->qp(Ljava/io/Reader;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field private static synthetic VH:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field

.field private static synthetic Zo:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field


# instance fields
.field final synthetic DW:Z
    .annotation runtime Labcd/dy;
        field = -0x1ec0178b68ca4c89L
    .end annotation
.end field

.field final synthetic FH:I
    .annotation runtime Labcd/dy;
        field = -0xf37a89e2dbe7200L
    .end annotation
.end field

.field final synthetic Hw:Z
    .annotation runtime Labcd/dy;
        field = -0x556c8be89ed5dbb3L
    .end annotation
.end field

.field final synthetic j6:Ljava/lang/StringBuffer;
    .annotation runtime Labcd/dy;
        field = 0x47dfbb70acb32e50L
    .end annotation
.end field

.field final synthetic v5:Lcom/aide/ui/views/editor/EditorModel;
    .annotation runtime Labcd/dy;
        field = -0x3040153afb3a18bL
    .end annotation

    .annotation runtime Labcd/hy;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/views/editor/EditorModel$a;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/EditorModel;Ljava/lang/StringBuffer;ZIZ)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x3e6b5144ba11d76dL
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/aide/ui/views/editor/EditorModel$a;->v5:Lcom/aide/ui/views/editor/EditorModel;

    iput-object p2, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    iput-boolean p3, p0, Lcom/aide/ui/views/editor/EditorModel$a;->DW:Z

    iput p4, p0, Lcom/aide/ui/views/editor/EditorModel$a;->FH:I

    iput-boolean p5, p0, Lcom/aide/ui/views/editor/EditorModel$a;->Hw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(I[CII)Z
    .registers 14
    .annotation runtime Labcd/ey;
        method = 0x3bf70b2844da98bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/EditorModel$a;->Zo:Z

    if-eqz v0, :cond_1d

    const-wide v1, -0x3e919bd7b3b82198L  # -1.5933762383773044E7

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->J0(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_1d
    iget-object v0, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/EditorModel$a;->DW:Z

    const/16 v2, 0x9

    if-eqz v0, :cond_80

    move v0, p3

    const/4 v3, 0x0

    :goto_2b
    add-int v4, p3, p4

    const/16 v5, 0x20

    if-ge v0, v4, :cond_4a

    .line 3
    aget-char v6, p2, v0

    if-eq v6, v2, :cond_3b

    if-eq v6, v5, :cond_38

    goto :goto_4a

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 4
    :cond_3b
    iget v4, p0, Lcom/aide/ui/views/editor/EditorModel$a;->FH:I

    iget v5, p0, Lcom/aide/ui/views/editor/EditorModel$a;->FH:I

    rem-int v5, v3, v5

    sub-int/2addr v4, v5

    if-nez v4, :cond_46

    .line 5
    iget v4, p0, Lcom/aide/ui/views/editor/EditorModel$a;->FH:I

    :cond_46
    add-int/2addr v3, v4

    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_4a
    :goto_4a
    const/4 v6, 0x0

    .line 6
    :goto_4b
    iget v7, p0, Lcom/aide/ui/views/editor/EditorModel$a;->FH:I

    div-int v7, v3, v7

    if-ge v6, v7, :cond_59

    .line 7
    iget-object v7, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    :cond_59
    const/4 v6, 0x0

    .line 8
    :goto_5a
    iget v7, p0, Lcom/aide/ui/views/editor/EditorModel$a;->FH:I

    rem-int v7, v3, v7

    if-ge v6, v7, :cond_68

    .line 9
    iget-object v7, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    :cond_68
    :goto_68
    if-ge v0, v4, :cond_9b

    .line 10
    aget-char v3, p2, v0

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_76

    aget-char v3, p2, v0

    if-ne v3, v2, :cond_7d

    .line 11
    :cond_76
    iget-object v3, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    aget-char v5, p2, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_80
    move v0, p3

    :goto_81
    add-int v3, p3, p4

    if-ge v0, v3, :cond_9b

    .line 12
    aget-char v3, p2, v0

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_91

    aget-char v3, p2, v0

    if-ne v3, v2, :cond_98

    .line 13
    :cond_91
    iget-object v3, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    aget-char v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 14
    :cond_9b
    iget-object v0, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_c6

    .line 15
    iget-object v0, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 16
    iget-object v2, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3, v0, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 17
    iget-object v1, p0, Lcom/aide/ui/views/editor/EditorModel$a;->v5:Lcom/aide/ui/views/editor/EditorModel;

    invoke-static {v1}, Lcom/aide/ui/views/editor/EditorModel;->ko(Lcom/aide/ui/views/editor/EditorModel;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/views/editor/EditorModel$a;->v5:Lcom/aide/ui/views/editor/EditorModel;

    invoke-static {v2, v0}, Lcom/aide/ui/views/editor/EditorModel;->oY(Lcom/aide/ui/views/editor/EditorModel;[C)Lcom/aide/ui/views/editor/TextBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_d5

    .line 18
    :cond_c6
    iget-object v0, p0, Lcom/aide/ui/views/editor/EditorModel$a;->v5:Lcom/aide/ui/views/editor/EditorModel;

    invoke-static {v0}, Lcom/aide/ui/views/editor/EditorModel;->ko(Lcom/aide/ui/views/editor/EditorModel;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/editor/EditorModel$a;->v5:Lcom/aide/ui/views/editor/EditorModel;

    invoke-static {v1}, Lcom/aide/ui/views/editor/EditorModel;->ye(Lcom/aide/ui/views/editor/EditorModel;)Lcom/aide/ui/views/editor/TextBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_d5
    .catchall {:try_start_0 .. :try_end_d5} :catchall_d7

    :goto_d5
    const/4 p1, 0x1

    return p1

    :catchall_d7
    move-exception v0

    .line 19
    sget-boolean v1, Lcom/aide/ui/views/editor/EditorModel$a;->VH:Z

    if-eqz v1, :cond_f6

    const-wide v2, -0x3e919bd7b3b82198L  # -1.5933762383773044E7

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/iy;->a8(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f6
    goto :goto_f8

    :goto_f7
    throw v0

    :goto_f8
    goto :goto_f7
.end method

.method public FH(I[CII)V
    .registers 14
    .annotation runtime Labcd/ey;
        method = -0x1fc8a1dd117ade2dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/EditorModel$a;->Zo:Z

    if-eqz v0, :cond_1d

    const-wide v1, -0x14839b4c1d918e80L  # -5.834100935705166E209

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->J0(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_1d
    iget-object v0, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/EditorModel$a;->DW:Z

    const/16 v2, 0x9

    if-eqz v0, :cond_80

    move v0, p3

    const/4 v3, 0x0

    :goto_2b
    add-int v4, p3, p4

    const/16 v5, 0x20

    if-ge v0, v4, :cond_4a

    .line 3
    aget-char v6, p2, v0

    if-eq v6, v2, :cond_3b

    if-eq v6, v5, :cond_38

    goto :goto_4a

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 4
    :cond_3b
    iget v4, p0, Lcom/aide/ui/views/editor/EditorModel$a;->FH:I

    iget v5, p0, Lcom/aide/ui/views/editor/EditorModel$a;->FH:I

    rem-int v5, v3, v5

    sub-int/2addr v4, v5

    if-nez v4, :cond_46

    .line 5
    iget v4, p0, Lcom/aide/ui/views/editor/EditorModel$a;->FH:I

    :cond_46
    add-int/2addr v3, v4

    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_4a
    :goto_4a
    const/4 v6, 0x0

    .line 6
    :goto_4b
    iget v7, p0, Lcom/aide/ui/views/editor/EditorModel$a;->FH:I

    div-int v7, v3, v7

    if-ge v6, v7, :cond_59

    .line 7
    iget-object v7, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    :cond_59
    const/4 v6, 0x0

    .line 8
    :goto_5a
    iget v7, p0, Lcom/aide/ui/views/editor/EditorModel$a;->FH:I

    rem-int v7, v3, v7

    if-ge v6, v7, :cond_68

    .line 9
    iget-object v7, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    :cond_68
    :goto_68
    if-ge v0, v4, :cond_9b

    .line 10
    aget-char v3, p2, v0

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_76

    aget-char v3, p2, v0

    if-ne v3, v2, :cond_7d

    .line 11
    :cond_76
    iget-object v3, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    aget-char v5, p2, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_80
    move v0, p3

    :goto_81
    add-int v3, p3, p4

    if-ge v0, v3, :cond_9b

    .line 12
    aget-char v3, p2, v0

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_91

    aget-char v3, p2, v0

    if-ne v3, v2, :cond_98

    .line 13
    :cond_91
    iget-object v3, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    aget-char v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 14
    :cond_9b
    iget-object v0, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_c6

    .line 15
    iget-object v0, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 16
    iget-object v2, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/aide/ui/views/editor/EditorModel$a;->j6:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3, v0, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 17
    iget-object v1, p0, Lcom/aide/ui/views/editor/EditorModel$a;->v5:Lcom/aide/ui/views/editor/EditorModel;

    invoke-static {v1}, Lcom/aide/ui/views/editor/EditorModel;->ko(Lcom/aide/ui/views/editor/EditorModel;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/views/editor/EditorModel$a;->v5:Lcom/aide/ui/views/editor/EditorModel;

    invoke-static {v2, v0}, Lcom/aide/ui/views/editor/EditorModel;->oY(Lcom/aide/ui/views/editor/EditorModel;[C)Lcom/aide/ui/views/editor/TextBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_d5

    .line 18
    :cond_c6
    iget-object v0, p0, Lcom/aide/ui/views/editor/EditorModel$a;->v5:Lcom/aide/ui/views/editor/EditorModel;

    invoke-static {v0}, Lcom/aide/ui/views/editor/EditorModel;->ko(Lcom/aide/ui/views/editor/EditorModel;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/views/editor/EditorModel$a;->v5:Lcom/aide/ui/views/editor/EditorModel;

    invoke-static {v1}, Lcom/aide/ui/views/editor/EditorModel;->ye(Lcom/aide/ui/views/editor/EditorModel;)Lcom/aide/ui/views/editor/TextBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_d5
    .catchall {:try_start_0 .. :try_end_d5} :catchall_d6

    :goto_d5
    return-void

    :catchall_d6
    move-exception v0

    .line 19
    sget-boolean v1, Lcom/aide/ui/views/editor/EditorModel$a;->VH:Z

    if-eqz v1, :cond_f5

    const-wide v2, -0x14839b4c1d918e80L  # -5.834100935705166E209

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/iy;->a8(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f5
    goto :goto_f7

    :goto_f6
    throw v0

    :goto_f7
    goto :goto_f6
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1c186d5d3360d9efL
    .end annotation

    const-wide v0, -0xd3f2187e520d980L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/EditorModel$a;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/ui/views/editor/EditorModel$a;->VH:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method
