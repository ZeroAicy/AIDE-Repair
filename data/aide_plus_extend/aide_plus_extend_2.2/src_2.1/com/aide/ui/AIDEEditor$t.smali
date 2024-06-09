.class public Lcom/aide/ui/AIDEEditor$t;
.super Lcom/aide/ui/views/CodeEditText$CodeEditTextHighlightingModel;
.source "SourceFile"

# interfaces
.implements Lcom/aide/ui/services/OpenFileService$OpenFileModel;


# annotations
.annotation runtime Labcd/cy;
    clazz = -0x1cfb6d6a69ea43fL
    container = -0x1cfb6d6a69ea43fL
    user = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/AIDEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/AIDEEditor$t$e;,
        Lcom/aide/ui/AIDEEditor$t$f;,
        Lcom/aide/ui/AIDEEditor$t$c;,
        Lcom/aide/ui/AIDEEditor$t$d;,
        Lcom/aide/ui/AIDEEditor$t$a;,
        Lcom/aide/ui/AIDEEditor$t$b;
    }
.end annotation


# static fields
.field private static synthetic Sf:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field

.field private static synthetic ef:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field


# instance fields
.field private KD:Labcd/jg;
    .annotation runtime Labcd/dy;
        field = 0x6526329320383bcL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Labcd/jg<",
            "Lcom/aide/engine/SyntaxError;",
            ">;"
        }
    .end annotation
.end field

.field private SI:I
    .annotation runtime Labcd/dy;
        field = -0xb2dfd81dcc3950dL
    .end annotation
.end field

.field protected cb:Lcom/aide/codemodel/api/abstraction/CodeModel;
    .annotation runtime Labcd/dy;
        field = 0x1c584e1bcc414744L
    .end annotation
.end field

.field private cn:Labcd/jg;
    .annotation runtime Labcd/dy;
        field = 0x2e40b6319465b923L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Labcd/jg<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected dx:Ljava/lang/String;
    .annotation runtime Labcd/dy;
        field = -0x2483fc672f53ba89L
    .end annotation
.end field

.field private ei:I
    .annotation runtime Labcd/dy;
        field = -0x30e2ee2a3ba70c30L
    .end annotation
.end field

.field private nw:I
    .annotation runtime Labcd/dy;
        field = 0x460d72e711884080L
    .end annotation
.end field

.field private ro:Labcd/jg;
    .annotation runtime Labcd/dy;
        field = -0x1676446a089f45d7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Labcd/jg<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic sG:Lcom/aide/ui/AIDEEditor;
    .annotation runtime Labcd/dy;
        field = 0x29c7567524f84c30L
    .end annotation

    .annotation runtime Labcd/hy;
    .end annotation
.end field

.field protected sh:J
    .annotation runtime Labcd/dy;
        field = -0x4688526ecff585a7L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/AIDEEditor$t;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/AIDEEditor;)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x1c770930fd7ab97L
    .end annotation

    const-wide v0, 0x2d9cea1efbdbf8c5L  # 5.677766246953322E-89

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    :cond_d
    iput-object p1, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText$CodeEditTextHighlightingModel;-><init>(Lcom/aide/ui/views/CodeEditText;)V

    const/4 v3, -0x1

    .line 9
    iput v3, p0, Lcom/aide/ui/AIDEEditor$t;->ei:I

    .line 10
    invoke-virtual {p0, v2}, Lcom/aide/ui/AIDEEditor$t;->k1(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v3

    .line 11
    sget-boolean v4, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v0, v1, v2, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public constructor <init>(Lcom/aide/ui/AIDEEditor;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x6fc055c4c07f6c9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x24342c509021609bL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    iput-object p1, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    .line 2
    invoke-static {p2}, Lcom/aide/ui/util/FileSystem;->Mz(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/aide/ui/views/CodeEditText$CodeEditTextHighlightingModel;-><init>(Lcom/aide/ui/views/CodeEditText;Ljava/io/Reader;I)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/aide/ui/AIDEEditor$t;->ei:I

    .line 4
    invoke-static {p2}, Lcom/aide/ui/util/FileSystem;->lg(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aide/ui/AIDEEditor$t;->sh:J

    .line 5
    invoke-virtual {p0, p2}, Lcom/aide/ui/AIDEEditor$t;->k1(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->fh()V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    .line 7
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0x24342c509021609bL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method private HT()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xb078e3bae8bd2a1L
    .end annotation

    const-wide v0, -0x1eca4043df8f7e18L  # -1.9110686653857924E160

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "TarinerHintMaps"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$t;->ro:Labcd/jg;

    invoke-static {v4}, Lcom/aide/common/SerializeHelper;->DW(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method static synthetic N0(Lcom/aide/ui/AIDEEditor$t;)Labcd/jg;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x3fc1c08df96c3c8L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/AIDEEditor$t;->ro:Labcd/jg;

    return-object p0
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/ey;
        method = 0x115b13857298d3e8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x156350ea77c20b9L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v0, Labcd/jg;

    invoke-direct {v0}, Labcd/jg;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->ro:Labcd/jg;

    const-string v0, "\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_1b
    array-length v3, v0

    if-ge v2, v3, :cond_63

    .line 4
    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 5
    :goto_21
    array-length v5, p2

    if-ge v4, v5, :cond_60

    .line 6
    aget-object v5, p2, v4

    .line 7
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5d

    move-object v7, v3

    const/4 v6, 0x0

    .line 8
    :goto_2e
    array-length v8, p2

    if-ge v6, v8, :cond_46

    if-eq v4, v6, :cond_43

    .line 9
    aget-object v8, p2, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_43

    aget-object v8, p2, v6

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 10
    :cond_46
    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_5d

    .line 11
    iget-object v6, p0, Lcom/aide/ui/AIDEEditor$t;->ro:Labcd/jg;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v7, v8, v5}, Labcd/jg;->EQ(Ljava/lang/Object;II)V
    :try_end_5d
    .catchall {:try_start_0 .. :try_end_5d} :catchall_64

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_63
    return-void

    :catchall_64
    move-exception v0

    .line 12
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_75

    const-wide v2, -0x156350ea77c20b9L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    goto :goto_77

    :goto_76
    throw v0

    :goto_77
    goto :goto_76
.end method

.method static synthetic d8(Lcom/aide/ui/AIDEEditor$t;)Labcd/jg;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x1a3c4042f73b839dL
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/AIDEEditor$t;->KD:Labcd/jg;

    return-object p0
.end method

.method static synthetic eN(Lcom/aide/ui/AIDEEditor$t;)Labcd/jg;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x18b35885feceb600L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    return-object p0
.end method

.method static synthetic fP(Lcom/aide/ui/AIDEEditor$t;)Ljava/lang/String;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x7580ddefae36fb4L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/AIDEEditor$t;->dx:Ljava/lang/String;

    return-object p0
.end method

.method protected fh()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x20cb02fa7b88eb90L
    .end annotation

    const-wide v0, 0x6cf9b1fbf54bed3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "TarinerHintMaps"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2, v4}, Lcom/aide/common/SerializeHelper;->j6(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/jg;

    iput-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->ro:Labcd/jg;
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method private iK(I)Z
    .registers 8
    .annotation runtime Labcd/ey;
        method = -0x5fe3bbb06663a4fL
    .end annotation

    const-wide v0, -0xe8a02e6b67df180L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    :cond_c
    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    if-gez p1, :cond_12

    return v2

    :cond_12
    const/4 v3, 0x0

    .line 1
    :goto_13
    invoke-virtual {p0, p1}, Lcom/aide/ui/views/editor/EditorModel;->SI(I)I

    move-result v4

    if-ge v3, v4, :cond_29

    .line 2
    invoke-virtual {p0, v3, p1}, Lcom/aide/ui/views/editor/EditorModel;->yS(II)C

    move-result v4
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_2b

    const/16 v5, 0x9

    if-eq v4, v5, :cond_26

    const/16 v5, 0x20

    if-eq v4, v5, :cond_26

    return v2

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_29
    const/4 p1, 0x1

    return p1

    :catchall_2b
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_38

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    goto :goto_3a

    :goto_39
    throw v2

    :goto_3a
    goto :goto_39
.end method

.method protected k1(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x9ddc55516e58b9L
    .end annotation

    const-wide v0, -0x6842b34771ec3260L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iput-object p1, p0, Lcom/aide/ui/AIDEEditor$t;->dx:Ljava/lang/String;

    if-eqz p1, :cond_1a

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->Hw()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/aide/engine/service/l;->Hw(Ljava/lang/String;Ljava/util/List;)Lcom/aide/codemodel/api/abstraction/CodeModel;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->cb:Lcom/aide/codemodel/api/abstraction/CodeModel;

    .line 3
    :cond_1a
    new-instance v2, Lcom/aide/ui/AIDEEditor$t$f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/AIDEEditor$t$f;-><init>(Lcom/aide/ui/AIDEEditor$t;Lcom/aide/ui/AIDEEditor$k;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/AbstractModel;->j3(Lcom/aide/ui/views/editor/ModelListener;)V

    .line 4
    new-instance v2, Lcom/aide/ui/AIDEEditor$t$a;

    invoke-direct {v2, p0}, Lcom/aide/ui/AIDEEditor$t$a;-><init>(Lcom/aide/ui/AIDEEditor$t;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/AbstractModel;->j3(Lcom/aide/ui/views/editor/ModelListener;)V

    .line 5
    new-instance v2, Lcom/aide/ui/AIDEEditor$t$b;

    invoke-direct {v2, p0}, Lcom/aide/ui/AIDEEditor$t$b;-><init>(Lcom/aide/ui/AIDEEditor$t;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/EditorModel;->k2(Lcom/aide/ui/views/editor/EditorModel$g;)V

    .line 6
    new-instance v2, Lcom/aide/ui/AIDEEditor$t$c;

    invoke-direct {v2, p0}, Lcom/aide/ui/AIDEEditor$t$c;-><init>(Lcom/aide/ui/AIDEEditor$t;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/EditorModel;->zh(Lcom/aide/ui/views/editor/EditorModel$i;)V
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception v2

    .line 7
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method private oT(I)V
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x29467a1762e4ee65L
    .end annotation

    const-wide v0, -0x2efa82bf488008L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    if-nez v2, :cond_17

    new-instance v2, Labcd/jg;

    invoke-direct {v2}, Labcd/jg;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    .line 2
    :cond_17
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    add-int/lit8 v4, p1, -0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Labcd/jg;->EQ(Ljava/lang/Object;II)V

    .line 3
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$t;->sv()V

    .line 4
    invoke-virtual {p0, v5, v4, v5, p1}, Lcom/aide/ui/views/editor/AbstractModel;->yO(IIII)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_35

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method static synthetic om(Lcom/aide/ui/AIDEEditor$t;I)V
    .registers 2
    .annotation runtime Labcd/ey;
        method = 0x22103bb29b720a7cL
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditor$t;->oT(I)V

    return-void
.end method

.method private sv()V
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x2a0ac1f3b8f5affcL
    .end annotation

    const-wide v0, -0x7c75c84d077ac07L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    if-eqz v2, :cond_53

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_54

    .line 3
    :try_start_15
    iget-object v3, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    invoke-virtual {v3}, Labcd/jg;->v5()Labcd/kg;

    move-result-object v3

    .line 4
    :goto_1b
    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Labcd/kg;->DW()I

    move-result v6

    invoke-virtual {v3}, Labcd/kg;->j6()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Labcd/jg;->gn(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 5
    invoke-virtual {v3}, Labcd/kg;->DW()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_3a
    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    invoke-virtual {v4, v3}, Labcd/jg;->VH(Labcd/kg;)Labcd/kg;

    move-result-object v3
    :try_end_40
    .catch Labcd/hg; {:try_start_15 .. :try_end_40} :catch_41
    .catchall {:try_start_15 .. :try_end_40} :catchall_54

    goto :goto_1b

    .line 8
    :catch_41
    :try_start_41
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4a

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    .line 9
    :cond_4a
    invoke-static {}, Lcom/aide/ui/App;->getDebugger()Lcom/aide/ui/debugger/Debugger;

    move-result-object v3

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$t;->dx:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/aide/ui/debugger/Debugger;->SI(Ljava/lang/String;Ljava/util/List;)V
    :try_end_53
    .catchall {:try_start_41 .. :try_end_53} :catchall_54

    :cond_53
    return-void

    :catchall_54
    move-exception v2

    .line 10
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_5c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5c
    goto :goto_5e

    :goto_5d
    throw v2

    :goto_5e
    goto :goto_5d
.end method

.method private u9(IIII)Ljava/lang/String;
    .registers 14
    .annotation runtime Labcd/ey;
        method = -0x9400bb0129d7200L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_21

    const-wide v1, 0x247250b2b360ca37L  # 4.031755853177983E-133

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/iy;->J0(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    const-string v0, ""

    .line 1
    new-instance v1, Labcd/mg;

    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, -0x1

    add-int/lit8 v5, p4, -0x2

    invoke-direct {v1, v2, v3, v4, v5}, Labcd/mg;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/aide/ui/views/editor/EditorModel;->Gj(Labcd/mg;)Ljava/io/Reader;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_41

    .line 3
    :try_start_39
    invoke-static {v1, v2}, Lcom/aide/common/StreamUtilities;->gn(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_40} :catch_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_41

    :catch_40
    return-object v0

    :catchall_41
    move-exception v0

    .line 5
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_64

    const-wide v2, 0x247250b2b360ca37L  # 4.031755853177983E-133

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/iy;->a8(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    throw v0
.end method

.method static synthetic wE(Lcom/aide/ui/AIDEEditor$t;II)V
    .registers 3
    .annotation runtime Labcd/ey;
        method = 0x1fcaa12fdde51b60L
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/editor/AbstractModel;->wc(II)V

    return-void
.end method

.method static synthetic zf(Lcom/aide/ui/AIDEEditor$t;)V
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x1d714101f3d1f61bL
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$t;->sv()V

    return-void
.end method


# virtual methods
.method public Ak(I)I
    .registers 8
    .annotation runtime Labcd/ey;
        method = -0x12303ff27be41c0L
    .end annotation

    const-wide v0, 0x410094bac855293dL  # 135831.34781868188

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    :cond_c
    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    if-gez p1, :cond_12

    return v2

    :cond_12
    const/4 v3, 0x0

    .line 1
    :goto_13
    invoke-virtual {p0, p1}, Lcom/aide/ui/views/editor/EditorModel;->SI(I)I

    move-result v4

    if-ge v2, v4, :cond_36

    .line 2
    invoke-virtual {p0, v2, p1}, Lcom/aide/ui/views/editor/EditorModel;->yS(II)C

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_29

    const/16 v5, 0x20

    if-eq v4, v5, :cond_26

    return v3

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 3
    :cond_29
    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v4

    add-int/2addr v3, v4

    .line 4
    div-int/2addr v3, v4
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_37

    mul-int v3, v3, v4

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_36
    return v3

    :catchall_37
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_44

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    goto :goto_46

    :goto_45
    throw v2

    :goto_46
    goto :goto_45
.end method

.method public BT(IIIIII)V
    .registers 28
    .annotation runtime Labcd/ey;
        method = -0x1901f16da3fbfef9L
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/4 v6, 0x6

    const-wide v4, -0x6fa5e07b437d80L

    :try_start_1e
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_51

    new-array v0, v6, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v19

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v18

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v17

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v16

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v15

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v14

    invoke-static {v4, v5, v7, v0}, Labcd/iy;->QX(JLjava/lang/Object;[Ljava/lang/Object;)V

    .line 1
    :cond_51
    invoke-direct/range {p0 .. p4}, Lcom/aide/ui/AIDEEditor$t;->u9(IIII)Ljava/lang/String;

    move-result-object v0

    const-string v20, ""
    :try_end_57
    .catchall {:try_start_1e .. :try_end_57} :catchall_78

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const/4 v14, 0x6

    move-object/from16 v6, v20

    .line 2
    :try_start_64
    invoke-virtual/range {v1 .. v6}, Lcom/aide/ui/views/CodeEditText$CodeEditTextModel;->PH(IIIILjava/lang/String;)V

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v0

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/aide/ui/views/CodeEditText$CodeEditTextModel;->PH(IIIILjava/lang/String;)V
    :try_end_75
    .catchall {:try_start_64 .. :try_end_75} :catchall_76

    return-void

    :catchall_76
    move-exception v0

    goto :goto_7a

    :catchall_78
    move-exception v0

    const/4 v14, 0x6

    .line 4
    :goto_7a
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_b3

    new-array v1, v14, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v19

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v18

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v17

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v16

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v15

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v13}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-wide v2, -0x6fa5e07b437d80L

    invoke-static {v0, v2, v3, v7, v1}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_b3
    throw v0
.end method

.method public E4(CII)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x26ca75fbd8ebbbadL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_1c

    const-wide v1, 0x494ab8ec3614e20L  # 1.35746207422708E-286

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_1c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, ".java"

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a5

    const-string v3, ".js"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a5

    const-string v3, ".c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a5

    const-string v3, ".cpp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a5

    const-string v3, ".h"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a5

    const-string v3, ".cc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a5

    const-string v3, ".hh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a5

    const-string v3, ".hpp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a5

    const-string v3, ".gradle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    goto :goto_a5

    :cond_6e
    const-string v3, ".xml"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9a

    const-string v3, ".html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9a

    const-string v3, ".htm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    goto :goto_9a

    :cond_87
    const-string v3, ".css"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 6
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {v0, p1, v1, v3}, Labcd/of;->j6(Lcom/aide/ui/AIDEEditor;CII)Z

    move-result v0

    goto :goto_af

    .line 7
    :cond_9a
    :goto_9a
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {v0, p1, v1, v3}, Labcd/qf;->j6(Lcom/aide/ui/AIDEEditor;CII)Z

    move-result v0

    goto :goto_af

    .line 8
    :cond_a5
    :goto_a5
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {v0, p1, v1, v3}, Labcd/pf;->j6(Lcom/aide/ui/AIDEEditor;CII)Z

    move-result v0

    :goto_af
    xor-int/lit8 v1, v0, 0x1

    :cond_b1
    if-eqz v1, :cond_f5

    .line 9
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->cb:Lcom/aide/codemodel/api/abstraction/CodeModel;

    if-eqz v0, :cond_f5

    .line 10
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->cb:Lcom/aide/codemodel/api/abstraction/CodeModel;

    invoke-interface {v0}, Lcom/aide/codemodel/api/abstraction/CodeModel;->getLanguages()Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/codemodel/api/abstraction/Language;

    .line 12
    invoke-interface {v1, p1}, Lcom/aide/codemodel/api/abstraction/Language;->isParenChar(C)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 13
    invoke-static {}, Lcom/aide/ui/App;->we()Lcom/aide/ui/services/EngineService;

    move-result-object v1

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, 0x1

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    .line 14
    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v6

    move v5, p1

    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/aide/ui/services/EngineService;->Zo(Ljava/lang/String;IICI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f5

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f5

    .line 17
    invoke-static {}, Lcom/aide/ui/App;->ei()Lcom/aide/ui/services/RefactoringService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aide/ui/services/RefactoringService;->DW(Ljava/util/List;)V
    :try_end_f5
    .catchall {:try_start_0 .. :try_end_f5} :catchall_f6

    :cond_f5
    return-void

    :catchall_f6
    move-exception v0

    .line 18
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_114

    const-wide v2, 0x494ab8ec3614e20L  # 1.35746207422708E-286

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_114
    goto :goto_116

    :goto_115
    throw v0

    :goto_116
    goto :goto_115
.end method

.method public Fd(II)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x70fee001bfb1a9c0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_16

    const-wide v0, -0x190353a527d57659L  # -1.247597231167751E188

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    invoke-static {}, Lcom/aide/ui/App;->we()Lcom/aide/ui/services/EngineService;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p2, 0x1

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v4

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aide/ui/services/EngineService;->v5(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/aide/ui/App;->ei()Lcom/aide/ui/services/RefactoringService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aide/ui/services/RefactoringService;->DW(Ljava/util/List;)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v0

    .line 5
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0x190353a527d57659L  # -1.247597231167751E188

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v0
.end method

.method public GK(III)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = -0x3417cce7aba954ecL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_1c

    const-wide v1, 0x1bd40767f436f52bL

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_1c
    iget v0, p0, Lcom/aide/ui/AIDEEditor$t;->ei:I

    if-ne p1, v0, :cond_29

    iget v0, p0, Lcom/aide/ui/AIDEEditor$t;->nw:I

    if-ne p2, v0, :cond_29

    iget v0, p0, Lcom/aide/ui/AIDEEditor$t;->SI:I

    if-ne p3, v0, :cond_29

    return-void

    .line 2
    :cond_29
    iget v0, p0, Lcom/aide/ui/AIDEEditor$t;->ei:I

    .line 3
    iget v1, p0, Lcom/aide/ui/AIDEEditor$t;->nw:I

    .line 4
    iget v2, p0, Lcom/aide/ui/AIDEEditor$t;->SI:I

    .line 5
    iput p2, p0, Lcom/aide/ui/AIDEEditor$t;->nw:I

    .line 6
    iput p3, p0, Lcom/aide/ui/AIDEEditor$t;->SI:I

    .line 7
    iput p1, p0, Lcom/aide/ui/AIDEEditor$t;->ei:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3b

    .line 8
    invoke-virtual {p0, v1, v0, v2, v0}, Lcom/aide/ui/views/editor/AbstractModel;->yO(IIII)V

    .line 9
    :cond_3b
    iget v0, p0, Lcom/aide/ui/AIDEEditor$t;->nw:I

    iget v1, p0, Lcom/aide/ui/AIDEEditor$t;->ei:I

    iget v2, p0, Lcom/aide/ui/AIDEEditor$t;->SI:I

    iget v3, p0, Lcom/aide/ui/AIDEEditor$t;->ei:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/aide/ui/views/editor/AbstractModel;->yO(IIII)V
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_47

    return-void

    :catchall_47
    move-exception v0

    .line 10
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_65

    const-wide v2, 0x1bd40767f436f52bL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    throw v0
.end method

.method public HO(I)V
    .registers 11
    .annotation runtime Labcd/ey;
        method = -0x22936cc7f137f6bbL
    .end annotation

    const-string v0, "debug-aide"

    const-wide v1, 0x4cddbc62915e59a0L  # 1.9113486114525157E62

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_e
    iget-object v3, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    const/4 v4, 0x0

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5}, Labcd/jg;->tp(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 2
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    const v3, 0x7fffffff

    invoke-virtual {v0, v5, v4, v5, v3}, Labcd/jg;->DW(IIII)V

    .line 3
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$t;->sv()V

    .line 4
    invoke-virtual {p0, v4, v5, v4, p1}, Lcom/aide/ui/views/editor/AbstractModel;->yO(IIII)V

    goto :goto_69

    .line 5
    :cond_2c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->er()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 6
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    iget-object v5, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d05ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    .line 7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d05e9

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/aide/ui/AIDEEditor$t$d;

    invoke-direct {v4, p0, p1}, Lcom/aide/ui/AIDEEditor$t$d;-><init>(Lcom/aide/ui/AIDEEditor$t;I)V

    .line 8
    invoke-static {v3, v5, v0, v4}, Lcom/aide/common/MessageBox;->ei(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_69

    .line 9
    :cond_66
    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditor$t;->oT(I)V
    :try_end_69
    .catchall {:try_start_7 .. :try_end_69} :catchall_6a

    :goto_69
    return-void

    :catchall_6a
    move-exception v0

    .line 10
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_77

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, v2, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    throw v0
.end method

.method public Hw(II)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x17c6e1dc6b9a930L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_16

    const-wide v0, -0x1d813b1374e79569L  # -2.8350081624474165E166

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/aide/ui/AIDEEditor$t;->ti(IIZ)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_34

    const-wide v2, -0x1d813b1374e79569L  # -2.8350081624474165E166

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public I(II)I
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x7302b91f7b9b1600L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_16

    const-wide v0, 0x103e97ed010cf723L  # 1.970570281747513E-230

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/AIDEEditor$t;->ba(II)Lcom/aide/engine/SyntaxError;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2
    iget p1, v0, Lcom/aide/engine/SyntaxError;->mb:I
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_21

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1

    :catchall_21
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0x103e97ed010cf723L  # 1.970570281747513E-230

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method public J0(Lcom/aide/engine/OpenFile;)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x3e60fa981f1b6f54L
    .end annotation

    const-wide v0, 0x17c184a46b6564e7L  # 2.999719494815177E-194

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p1, Lcom/aide/engine/OpenFile;->j6:[C

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/EditorModel;->pN([C)Lcom/aide/ui/views/editor/EditorModel$h;

    move-result-object v2

    .line 2
    iget-wide v3, v2, Lcom/aide/ui/views/editor/EditorModel$h;->FH:J

    iput-wide v3, p1, Lcom/aide/engine/OpenFile;->FH:J

    .line 3
    iget-object v3, v2, Lcom/aide/ui/views/editor/EditorModel$h;->j6:[C

    iput-object v3, p1, Lcom/aide/engine/OpenFile;->j6:[C

    .line 4
    iget v2, v2, Lcom/aide/ui/views/editor/EditorModel$h;->DW:I

    iput v2, p1, Lcom/aide/engine/OpenFile;->DW:I
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public Lz(CII)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x95042045982516fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_1c

    const-wide v1, 0x25be0ee470106478L  # 6.938161757310776E-127

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_1c
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->k2(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/AIDEEditorCompletion;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/aide/ui/AIDEEditorCompletion;->yS(CII)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_48

    const-wide v2, 0x25be0ee470106478L  # 6.938161757310776E-127

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0
.end method

.method public Mz(I)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x3e90f4f97dd74ef8L
    .end annotation

    const-wide v0, 0xeab2d2259b0f961L  # 5.216795982605563E-238

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    invoke-virtual {v2, p1}, Labcd/jg;->tp(I)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_29

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public QX(I)Z
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x1ff718bbb54921c9L
    .end annotation

    const-wide v0, -0xbde21a7ed0ec08cL  # -2.558675770000962E251

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getDebugger()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/AIDEEditor$t;->dx:Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/debugger/Debugger;->j3(Ljava/lang/String;I)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public Qq()Ljava/util/List;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0xf604aa3952fd0b8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x2c832af3b58e8b65L  # 2.8715951376148864E-94

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v3, Ljava/io/BufferedReader;

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/AbstractModel;->et()Ljava/io/Reader;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_25

    .line 3
    :goto_1a
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_24
    .catchall {:try_start_1a .. :try_end_23} :catchall_25

    goto :goto_1a

    :catch_24
    :cond_24
    return-object v2

    :catchall_25
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method public aM()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1f33556b96bf8de0L
    .end annotation

    const-wide v0, 0x4b5db27c6d8d465L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_55

    .line 1
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/AbstractModel;->et()Ljava/io/Reader;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/ui/util/FileSystem;->OW(Ljava/lang/String;Ljava/io/Reader;)V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/util/FileSystem;->lg(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aide/ui/AIDEEditor$t;->sh:J

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/EditorModel;->PT()V

    .line 4
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor$t;->HT()V

    .line 5
    invoke-static {}, Lcom/aide/ui/App;->EQ()Lcom/aide/ui/services/DropboxService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/services/DropboxService;->Mz(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_32} :catch_33
    .catchall {:try_start_c .. :try_end_32} :catchall_55

    goto :goto_54

    .line 6
    :catch_33
    :try_start_33
    invoke-static {}, Lcom/aide/ui/App;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could not be saved!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_54
    .catchall {:try_start_33 .. :try_end_54} :catchall_55

    :goto_54
    return-void

    :catchall_55
    move-exception v2

    .line 7
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_5d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5d
    throw v2
.end method

.method public ba(II)Lcom/aide/engine/SyntaxError;
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x11f2bce63fa87c45L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_16

    const-wide v0, 0x11b41edc2854fe90L  # 2.174317722969412E-223

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->KD:Labcd/jg;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    return-object v1

    .line 2
    :cond_1c
    invoke-virtual {v0, p2, p1}, Labcd/jg;->u7(II)Z

    move-result v2

    if-nez v2, :cond_23

    return-object v1

    .line 3
    :cond_23
    invoke-virtual {v0, p2, p1}, Labcd/jg;->Hw(II)Ljava/util/Enumeration;

    move-result-object v0

    .line 4
    :cond_27
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 5
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SyntaxError;

    .line 6
    invoke-virtual {v2}, Lcom/aide/engine/SyntaxError;->FH()Z

    move-result v3
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3b

    if-eqz v3, :cond_27

    return-object v2

    :cond_3a
    return-object v1

    :catchall_3b
    move-exception v0

    .line 7
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_54

    const-wide v2, 0x11b41edc2854fe90L  # 2.174317722969412E-223

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    goto :goto_56

    :goto_55
    throw v0

    :goto_56
    goto :goto_55
.end method

.method public cb(IIIILjava/lang/String;ZZ)V
    .registers 27
    .annotation runtime Labcd/ey;
        method = 0x12912df3c29ae4e0L
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x7

    const-wide v8, -0x2a4e98b70810c8fbL  # -6.236688267479137E104

    const/16 v17, 0x0

    :try_start_1a
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_53

    new-array v0, v14, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v0, v17

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v0, v13

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v0, v12

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v0, v11

    aput-object p5, v0, v10

    new-instance v15, Ljava/lang/Boolean;

    invoke-direct {v15, v6}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v16, 0x5

    aput-object v15, v0, v16

    new-instance v15, Ljava/lang/Boolean;

    invoke-direct {v15, v7}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v18, 0x6

    aput-object v15, v0, v18

    invoke-static {v8, v9, v1, v0}, Labcd/iy;->QX(JLjava/lang/Object;[Ljava/lang/Object;)V

    .line 1
    :cond_53
    iget-object v0, v1, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/common/KeyStrokeDetector;->U2()V

    if-nez v6, :cond_75

    if-eqz v7, :cond_75

    .line 2
    iget-object v0, v1, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->Ev(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v0

    .line 3
    iget-object v15, v1, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-static {v15}, Lcom/aide/ui/AIDEEditor;->ye(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v15

    goto :goto_77

    :cond_75
    const/4 v0, 0x0

    const/4 v15, 0x0

    .line 4
    :goto_77
    invoke-virtual/range {p0 .. p5}, Lcom/aide/ui/views/CodeEditText$CodeEditTextModel;->PH(IIIILjava/lang/String;)V

    if-nez v6, :cond_87

    if-eqz v7, :cond_87

    .line 5
    iget-object v8, v1, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-static {v8}, Lcom/aide/ui/AIDEEditor;->WB(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v8

    invoke-virtual {v8, v15, v0}, Lcom/aide/ui/views/editor/OConsole;->TI(II)V
    :try_end_87
    .catchall {:try_start_1a .. :try_end_87} :catchall_88

    :cond_87
    return-void

    :catchall_88
    move-exception v0

    .line 6
    sget-boolean v8, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v8, :cond_c5

    new-array v8, v14, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v17

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v13

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v12

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v11

    aput-object p5, v8, v10

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v6}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x5

    aput-object v2, v8, v3

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v7}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x6

    aput-object v2, v8, v3

    const-wide v2, -0x2a4e98b70810c8fbL  # -6.236688267479137E104

    invoke-static {v0, v2, v3, v1, v8}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_c5
    throw v0
.end method

.method public close()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x2a63387c9b11ecc9L
    .end annotation

    const-wide v0, 0x3e59a0f83106a10L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public cn()Z
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x36211ea80a4bf940L
    .end annotation

    const-wide v0, 0x4e05f8d0eb7a7921L  # 7.40452841225204E67

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-wide v2, p0, Lcom/aide/ui/AIDEEditor$t;->sh:J

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/ui/util/FileSystem;->lg(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/aide/ui/util/FileSystem;->DW(JJ)Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1d

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public dx(II)Z
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x9314bf0ab535b10L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_16

    const-wide v0, 0x44ec8b381cb90e27L  # 1.0783552180530528E24

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->KD:Labcd/jg;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    return v1

    .line 2
    :cond_1c
    invoke-virtual {v0, p2, p1}, Labcd/jg;->u7(II)Z

    move-result v2

    if-nez v2, :cond_23

    return v1

    .line 3
    :cond_23
    invoke-virtual {v0, p2, p1}, Labcd/jg;->Hw(II)Ljava/util/Enumeration;

    move-result-object v0

    .line 4
    :cond_27
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 5
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SyntaxError;

    .line 6
    invoke-virtual {v2}, Lcom/aide/engine/SyntaxError;->FH()Z

    move-result v2
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3c

    if-eqz v2, :cond_27

    const/4 p1, 0x1

    return p1

    :cond_3b
    return v1

    :catchall_3c
    move-exception v0

    .line 7
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x44ec8b381cb90e27L  # 1.0783552180530528E24

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    goto :goto_57

    :goto_56
    throw v0

    :goto_57
    goto :goto_56
.end method

.method public ef(II)Z
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x1e40bbfe52624cdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_16

    const-wide v0, -0x1584e7ee9853c298L  # -8.494746927209588E204

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->KD:Labcd/jg;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    return v1

    .line 2
    :cond_1c
    invoke-virtual {v0, p2, p1}, Labcd/jg;->u7(II)Z

    move-result v2

    if-nez v2, :cond_23

    return v1

    .line 3
    :cond_23
    invoke-virtual {v0, p2, p1}, Labcd/jg;->Hw(II)Ljava/util/Enumeration;

    move-result-object v0

    .line 4
    :cond_27
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 5
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SyntaxError;

    .line 6
    invoke-virtual {v2}, Lcom/aide/engine/SyntaxError;->Zo()Z

    move-result v2
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3c

    if-eqz v2, :cond_27

    const/4 p1, 0x1

    return p1

    :cond_3b
    return v1

    :catchall_3c
    move-exception v0

    .line 7
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_55

    const-wide v2, -0x1584e7ee9853c298L  # -8.494746927209588E204

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    goto :goto_57

    :goto_56
    throw v0

    :goto_57
    goto :goto_56
.end method

.method public ep(IZ)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x2d8e05bed66e3cd1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_16

    const-wide v0, -0x155eed9b4a566278L

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->ro:Labcd/jg;
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_64

    if-nez v0, :cond_1b

    return-void

    .line 2
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->ro:Labcd/jg;

    invoke-virtual {v0}, Labcd/jg;->v5()Labcd/kg;

    move-result-object v0

    .line 3
    :goto_21
    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$t;->ro:Labcd/jg;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Labcd/kg;->DW()I

    move-result v3

    invoke-virtual {v0}, Labcd/kg;->j6()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Labcd/jg;->gn(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 4
    invoke-virtual {v0}, Labcd/kg;->DW()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 5
    invoke-virtual {v0}, Labcd/kg;->j6()I

    move-result v0

    add-int/2addr v0, v2

    .line 6
    iget-object v3, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v3

    const/16 v4, 0x14

    if-lt v1, v4, :cond_57

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/AndroidHelper;->j3(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_57

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    invoke-virtual {v3, v1, v0, p2, v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->KD(IIZZ)V

    return-void

    .line 7
    :cond_5c
    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$t;->ro:Labcd/jg;

    invoke-virtual {v1, v0}, Labcd/jg;->VH(Labcd/kg;)Labcd/kg;

    move-result-object v0
    :try_end_62
    .catch Labcd/hg; {:try_start_1b .. :try_end_62} :catch_63
    .catchall {:try_start_1b .. :try_end_62} :catchall_64

    goto :goto_21

    :catch_63
    return-void

    :catchall_64
    move-exception v0

    .line 8
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_7d

    const-wide v2, -0x155eed9b4a566278L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    goto :goto_7f

    :goto_7e
    throw v0

    :goto_7f
    goto :goto_7e
.end method

.method public g3()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x48bc1272e7652c0L
    .end annotation

    const-wide v0, -0x1916f14adfb99039L  # -5.451351805856567E187

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->dx:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public gW()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x17c015ec8487375bL
    .end annotation

    const-wide v0, 0x1ff001c90d94a400L  # 7.461591670926185E-155

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/EditorModel;->BR()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public gn(II)Z
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0xc68e225c56a032dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_16

    const-wide v0, 0x34f3c39e6f2531d0L  # 1.2896700666600553E-53

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->KD:Labcd/jg;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    return v1

    .line 2
    :cond_1c
    invoke-virtual {v0, p2, p1}, Labcd/jg;->u7(II)Z

    move-result v2

    if-nez v2, :cond_23

    return v1

    .line 3
    :cond_23
    invoke-virtual {v0, p2, p1}, Labcd/jg;->Hw(II)Ljava/util/Enumeration;

    move-result-object v0

    .line 4
    :cond_27
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 5
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SyntaxError;

    .line 6
    invoke-virtual {v2}, Lcom/aide/engine/SyntaxError;->Hw()Z

    move-result v2
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3c

    if-eqz v2, :cond_27

    const/4 p1, 0x1

    return p1

    :cond_3b
    return v1

    :catchall_3c
    move-exception v0

    .line 7
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x34f3c39e6f2531d0L  # 1.2896700666600553E-53

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    goto :goto_57

    :goto_56
    throw v0

    :goto_57
    goto :goto_56
.end method

.method public hp(II)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x41dce16c1de02e0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_16

    const-wide v0, 0x1037fc5071fbadb3L

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->we()Lcom/aide/ui/services/EngineService;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p2, 0x1

    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    .line 3
    invoke-virtual {v4}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v4

    .line 4
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/aide/ui/services/EngineService;->gn(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b

    .line 6
    invoke-static {}, Lcom/aide/ui/App;->ei()Lcom/aide/ui/services/RefactoringService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aide/ui/services/RefactoringService;->DW(Ljava/util/List;)V
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    :cond_3b
    return-void

    :catchall_3c
    move-exception v0

    .line 7
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x1037fc5071fbadb3L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v0
.end method

.method public hx(Ljava/util/List;)V
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0xa9cb84b35b952cbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x2e078bec0779fe60L  # -7.600786759196841E86

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_37

    .line 2
    new-instance v2, Labcd/jg;

    invoke-direct {v2}, Labcd/jg;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    add-int/lit8 v4, v4, -0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v4, v6}, Labcd/jg;->EQ(Ljava/lang/Object;II)V

    goto :goto_1b

    .line 5
    :cond_34
    iput-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    goto :goto_42

    .line 6
    :cond_37
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;

    if-eqz v2, :cond_42

    .line 7
    new-instance v2, Labcd/jg;

    invoke-direct {v2}, Labcd/jg;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->cn:Labcd/jg;
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_43

    :cond_42
    :goto_42
    return-void

    :catchall_43
    move-exception v2

    .line 8
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    goto :goto_4d

    :goto_4c
    throw v2

    :goto_4d
    goto :goto_4c
.end method

.method public j6()V
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x289f9c92a0b2d3d0L
    .end annotation

    const-wide v0, -0x1959312bf6773abfL  # -3.101223527985212E186

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-static {v2}, Lcom/aide/ui/AIDEEditor;->aq(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v2

    .line 2
    iget-object v3, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-static {v3}, Lcom/aide/ui/AIDEEditor;->FN(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getCaretColumn()I

    move-result v3

    .line 3
    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$t;->ro:Labcd/jg;
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_50

    const/4 v5, 0x0

    .line 4
    :try_start_23
    iput-object v5, p0, Lcom/aide/ui/AIDEEditor$t;->ro:Labcd/jg;

    .line 5
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/aide/ui/util/FileSystem;->Mz(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v5

    invoke-virtual {p0, v5, p0}, Lcom/aide/ui/views/editor/EditorModel;->qP(Ljava/io/Reader;Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_30} :catch_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_33

    .line 6
    :catch_30
    :try_start_30
    iput-object v4, p0, Lcom/aide/ui/AIDEEditor$t;->ro:Labcd/jg;

    goto :goto_37

    :catchall_33
    move-exception v2

    iput-object v4, p0, Lcom/aide/ui/AIDEEditor$t;->ro:Labcd/jg;

    .line 7
    throw v2

    .line 8
    :goto_37
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/ui/util/FileSystem;->lg(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/aide/ui/AIDEEditor$t;->sh:J

    .line 9
    iget-object v4, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-static {v4}, Lcom/aide/ui/AIDEEditor;->jO(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/aide/ui/views/editor/OConsole;->TI(II)V

    .line 10
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-static {v2}, Lcom/aide/ui/AIDEEditor;->ko(Lcom/aide/ui/AIDEEditor;)V
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_50

    return-void

    :catchall_50
    move-exception v2

    .line 11
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_58

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_58
    throw v2
.end method

.method public lp(II)Z
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x14b8e26170ce0c5dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_16

    const-wide v0, -0x8add935b49a880L

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    iget v0, p0, Lcom/aide/ui/AIDEEditor$t;->ei:I

    if-ne p2, v0, :cond_24

    iget v0, p0, Lcom/aide/ui/AIDEEditor$t;->nw:I

    if-lt p1, v0, :cond_24

    iget p2, p0, Lcom/aide/ui/AIDEEditor$t;->SI:I
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_26

    if-gt p1, p2, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return p1

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_3f

    const-wide v2, -0x8add935b49a880L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v0
.end method

.method public nl(II)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x9a7554350d63afL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_16

    const-wide v0, -0x10356c4d9a9d9e84L

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/aide/ui/AIDEEditor$t;->ti(IIZ)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_34

    const-wide v2, -0x10356c4d9a9d9e84L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public nw(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x62fac5401e7ed81L
    .end annotation

    const-wide v0, 0x71920a1e4be24cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iput-object p1, p0, Lcom/aide/ui/AIDEEditor$t;->dx:Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditor;->Of()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public varargs qU(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/ey;
        method = 0x569cd7e52e4bf15L
    .end annotation

    const-string v0, ""

    const-string v1, "\n"

    :try_start_4
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_10

    const-wide v2, -0x5358d1f738e274a0L

    invoke-static {v2, v3, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_71

    :cond_10
    const/4 v2, 0x0

    :try_start_11
    const-string v3, "\r\n"

    .line 1
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "$space$"

    .line 2
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v3, p2

    move-object v5, p1

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_31

    aget-object v6, p2, v4

    .line 4
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 5
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p0}, Lcom/aide/ui/views/editor/EditorModel;->qP(Ljava/io/Reader;Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/AIDEEditor$t;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->aM()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_5d} :catch_5d
    .catchall {:try_start_11 .. :try_end_5d} :catchall_71

    .line 10
    :catch_5d
    :try_start_5d
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/util/FileSystem;->lg(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aide/ui/AIDEEditor$t;->sh:J

    .line 11
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->hz(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/aide/ui/views/editor/OConsole;->TI(II)V
    :try_end_70
    .catchall {:try_start_5d .. :try_end_70} :catchall_71

    return-void

    :catchall_71
    move-exception v0

    move-object v5, p1

    .line 12
    sget-boolean p1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz p1, :cond_82

    const-wide v2, -0x5358d1f738e274a0L

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_82
    goto :goto_84

    :goto_83
    throw v0

    :goto_84
    goto :goto_83
.end method

.method public ro(IIIIII)V
    .registers 27
    .annotation runtime Labcd/ey;
        method = -0xcd896e8d966d141L
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/4 v6, 0x6

    const-wide v4, 0x25189c49e137b10L

    :try_start_1e
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_51

    new-array v0, v6, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v19

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v18

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v17

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v16

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v15

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v14

    invoke-static {v4, v5, v7, v0}, Labcd/iy;->QX(JLjava/lang/Object;[Ljava/lang/Object;)V

    .line 1
    :cond_51
    invoke-direct/range {p0 .. p4}, Lcom/aide/ui/AIDEEditor$t;->u9(IIII)Ljava/lang/String;

    move-result-object v0
    :try_end_55
    .catchall {:try_start_1e .. :try_end_55} :catchall_67

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p5

    move/from16 v5, p6

    const/4 v14, 0x6

    move-object v6, v0

    .line 2
    :try_start_61
    invoke-virtual/range {v1 .. v6}, Lcom/aide/ui/views/CodeEditText$CodeEditTextModel;->PH(IIIILjava/lang/String;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    return-void

    :catchall_65
    move-exception v0

    goto :goto_69

    :catchall_67
    move-exception v0

    const/4 v14, 0x6

    .line 3
    :goto_69
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_a2

    new-array v1, v14, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v19

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v18

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v17

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v16

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v15

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v13}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-wide v2, 0x25189c49e137b10L

    invoke-static {v0, v2, v3, v7, v1}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_a2
    throw v0
.end method

.method public sG()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x32479e71ce8624b0L
    .end annotation

    const-wide v0, -0xebdd3bd78349fefL  # -3.698031432121388E237

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/EditorModel;->oy()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public sT()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x902520e489b6f30L
    .end annotation

    const-wide v0, 0x717c382b2459bc71L  # 4.5939311961830326E238

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget v2, p0, Lcom/aide/ui/AIDEEditor$t;->ei:I

    const/4 v3, -0x1

    .line 2
    iput v3, p0, Lcom/aide/ui/AIDEEditor$t;->ei:I

    .line 3
    iget v3, p0, Lcom/aide/ui/AIDEEditor$t;->nw:I

    iget v4, p0, Lcom/aide/ui/AIDEEditor$t;->SI:I

    invoke-virtual {p0, v3, v2, v4, v2}, Lcom/aide/ui/views/editor/AbstractModel;->yO(IIII)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public ti(IIZ)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x6521e703b984c188L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_1c

    const-wide v1, -0xde84e0bc4301711L  # -3.94998721409268E241

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_1c
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/common/KeyStrokeDetector;->U2()V

    const/4 v0, 0x0

    if-eqz p3, :cond_3d

    .line 2
    invoke-direct {p0, p1}, Lcom/aide/ui/AIDEEditor$t;->iK(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-static {v1}, Lcom/aide/ui/AIDEEditor;->mb(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/OConsole;->getCaretLine()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p1, :cond_3d

    const/4 p2, 0x0

    .line 3
    :cond_3d
    invoke-virtual {p0, p1}, Lcom/aide/ui/AIDEEditor$t;->Ak(I)I

    move-result v1

    if-eq v1, p2, :cond_a6

    if-gez p2, :cond_46

    goto :goto_a6

    :cond_46
    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    .line 4
    :goto_49
    invoke-virtual {p0, p1}, Lcom/aide/ui/views/editor/EditorModel;->SI(I)I

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0x20

    if-ge v1, v2, :cond_5f

    .line 5
    invoke-virtual {p0, v1, p1}, Lcom/aide/ui/views/editor/EditorModel;->yS(II)C

    move-result v2

    if-eq v2, v3, :cond_5c

    if-eq v2, v4, :cond_5c

    goto :goto_5f

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 6
    :cond_5f
    :goto_5f
    invoke-virtual {p0, v0, p1, v1, p0}, Lcom/aide/ui/views/editor/EditorModel;->ce(IIILjava/lang/Object;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->dx()Z

    move-result v2

    if-eqz v2, :cond_78

    const/4 v2, 0x0

    :goto_70
    if-ge v2, p2, :cond_9a

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 10
    :cond_78
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v2

    div-int v2, p2, v2

    .line 11
    iget-object v5, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v5}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v5

    rem-int v5, p2, v5

    const/4 v6, 0x0

    :goto_89
    if-ge v6, v2, :cond_91

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    :cond_91
    const/4 v2, 0x0

    :goto_92
    if-ge v2, v5, :cond_9a

    .line 13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_97
    .catchall {:try_start_0 .. :try_end_97} :catchall_a7

    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    .line 14
    :cond_9a
    :try_start_9a
    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, v2, p0}, Lcom/aide/ui/views/editor/EditorModel;->a5(IILjava/io/Reader;Ljava/lang/Object;)Labcd/kg;
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a6} :catch_a6
    .catchall {:try_start_9a .. :try_end_a6} :catchall_a7

    :catch_a6
    :cond_a6
    :goto_a6
    return-void

    :catchall_a7
    move-exception v0

    move-object v7, v0

    .line 15
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v0, :cond_c6

    const-wide v1, -0xde84e0bc4301711L  # -3.94998721409268E241

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v7

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c6
    goto :goto_c8

    :goto_c7
    throw v7

    :goto_c8
    goto :goto_c7
.end method

.method public uC(Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x36d0580af23c0045L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x1eb2468964141d90L  # -5.223742597114046E160

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Labcd/jg;

    invoke-direct {v2}, Labcd/jg;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v9, v3

    :goto_18
    if-ltz v9, :cond_4d

    .line 3
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SyntaxError;

    iget v3, v3, Lcom/aide/engine/SyntaxError;->jw:I

    add-int/lit8 v5, v3, -0x1

    .line 4
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SyntaxError;

    iget v3, v3, Lcom/aide/engine/SyntaxError;->fY:I

    add-int/lit8 v6, v3, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SyntaxError;

    iget v3, v3, Lcom/aide/engine/SyntaxError;->qp:I

    add-int/lit8 v7, v3, -0x1

    .line 5
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SyntaxError;

    iget v3, v3, Lcom/aide/engine/SyntaxError;->k2:I

    add-int/lit8 v8, v3, -0x2

    move-object v3, v2

    .line 6
    invoke-virtual/range {v3 .. v8}, Labcd/jg;->we(Ljava/lang/Object;IIII)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_18

    .line 7
    :cond_4d
    iput-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->KD:Labcd/jg;

    .line 8
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    new-instance v3, Lcom/aide/ui/AIDEEditor$t$e;

    invoke-direct {v3, p0}, Lcom/aide/ui/AIDEEditor$t$e;-><init>(Lcom/aide/ui/AIDEEditor$t;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_5a

    return-void

    :catchall_5a
    move-exception v2

    .line 9
    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_62

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    goto :goto_64

    :goto_63
    throw v2

    :goto_64
    goto :goto_63
.end method

.method public we()J
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x1994be39db72e1e1L
    .end annotation

    const-wide v0, 0x65ff312084d7590L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/EditorModel;->Cz()J

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-wide v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public xg(II)Z
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x2c65ef0dff4b9503L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor$t;->ef:Z

    if-eqz v0, :cond_16

    const-wide v0, 0x7bbc14a23d62500L

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor$t;->g3()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".java"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_b4

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b4

    const-string v2, ".c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b4

    const-string v2, ".cpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b4

    const-string v2, ".h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b4

    const-string v2, ".cc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b4

    const-string v2, ".hh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b4

    const-string v2, ".hpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b4

    const-string v2, ".gradle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    goto :goto_b4

    :cond_69
    const-string v2, ".xml"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a0

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a0

    const-string v2, ".htm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    goto :goto_a0

    :cond_82
    const-string v2, ".css"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 6
    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v5, p2, 0x1

    iget-object v6, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-static {v6}, Lcom/aide/ui/AIDEEditor;->jw(Lcom/aide/ui/AIDEEditor;)I

    move-result v6

    invoke-static {v1, v2, v5, v6}, Labcd/of;->DW(Lcom/aide/ui/AIDEEditor;III)Z

    move-result v1

    xor-int/2addr v1, v4

    if-nez v1, :cond_c8

    return v4

    :cond_9e
    const/4 v1, 0x0

    goto :goto_c8

    .line 7
    :cond_a0
    :goto_a0
    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v5, p2, 0x1

    iget-object v6, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-static {v6}, Lcom/aide/ui/AIDEEditor;->jw(Lcom/aide/ui/AIDEEditor;)I

    move-result v6

    invoke-static {v1, v2, v5, v6}, Labcd/qf;->DW(Lcom/aide/ui/AIDEEditor;III)Z

    move-result v1

    xor-int/2addr v1, v4

    if-nez v1, :cond_c8

    return v4

    .line 8
    :cond_b4
    :goto_b4
    iget-object v1, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v5, p2, 0x1

    iget-object v6, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    invoke-static {v6}, Lcom/aide/ui/AIDEEditor;->jw(Lcom/aide/ui/AIDEEditor;)I

    move-result v6

    invoke-static {v1, v2, v5, v6}, Labcd/pf;->DW(Lcom/aide/ui/AIDEEditor;III)Z

    move-result v1

    xor-int/2addr v1, v4

    if-nez v1, :cond_c8

    return v4

    :cond_c8
    :goto_c8
    if-eqz v1, :cond_ec

    .line 9
    invoke-static {}, Lcom/aide/ui/App;->we()Lcom/aide/ui/services/EngineService;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v5, p2, 0x1

    iget-object v6, p0, Lcom/aide/ui/AIDEEditor$t;->sG:Lcom/aide/ui/AIDEEditor;

    .line 10
    invoke-virtual {v6}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v6

    .line 11
    invoke-virtual {v1, v0, v2, v5, v6}, Lcom/aide/ui/services/EngineService;->VH(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ec

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_ec

    .line 13
    invoke-static {}, Lcom/aide/ui/App;->ei()Lcom/aide/ui/services/RefactoringService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aide/ui/services/RefactoringService;->DW(Ljava/util/List;)V
    :try_end_eb
    .catchall {:try_start_0 .. :try_end_eb} :catchall_ed

    return v4

    :cond_ec
    return v3

    :catchall_ed
    move-exception v0

    .line 14
    sget-boolean v1, Lcom/aide/ui/AIDEEditor$t;->Sf:Z

    if-eqz v1, :cond_106

    const-wide v2, 0x7bbc14a23d62500L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_106
    throw v0
.end method
