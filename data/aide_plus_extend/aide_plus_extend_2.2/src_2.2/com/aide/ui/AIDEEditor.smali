.class public Lcom/aide/ui/AIDEEditor;
.super Lcom/aide/ui/views/CodeEditText;
.source "SourceFile"

# interfaces
.implements Lcom/aide/ui/services/ErrorService$ErrorListener;


# annotations
.annotation runtime Labcd/cy;
    clazz = -0xa1a685f40ce8470L
    container = -0xa1a685f40ce8470L
    user = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/AIDEEditor$b;,
        Lcom/aide/ui/AIDEEditor$a;,
        Lcom/aide/ui/AIDEEditor$d;,
        Lcom/aide/ui/AIDEEditor$c;,
        Lcom/aide/ui/AIDEEditor$f;,
        Lcom/aide/ui/AIDEEditor$e;,
        Lcom/aide/ui/AIDEEditor$h;,
        Lcom/aide/ui/AIDEEditor$g;,
        Lcom/aide/ui/AIDEEditor$j;,
        Lcom/aide/ui/AIDEEditor$i;,
        Lcom/aide/ui/AIDEEditor$l;,
        Lcom/aide/ui/AIDEEditor$k;,
        Lcom/aide/ui/AIDEEditor$n;,
        Lcom/aide/ui/AIDEEditor$m;,
        Lcom/aide/ui/AIDEEditor$p;,
        Lcom/aide/ui/AIDEEditor$o;,
        Lcom/aide/ui/AIDEEditor$r;,
        Lcom/aide/ui/AIDEEditor$q;,
        Lcom/aide/ui/AIDEEditor$t;,
        Lcom/aide/ui/AIDEEditor$s;
    }
.end annotation


# static fields
.field private static synthetic Gj:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field

.field private static synthetic fN:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field


# instance fields
.field private Jl:Ljava/lang/String;
    .annotation runtime Labcd/dy;
        field = 0x28d79a885bd21164L
    .end annotation
.end field

.field private Q6:Ljava/lang/String;
    .annotation runtime Labcd/dy;
        field = -0x1de0fae4b93a2f68L
    .end annotation
.end field

.field private Z1:Lcom/aide/ui/AIDEEditorCompletion;
    .annotation runtime Labcd/dy;
        field = 0x3d59b6b5f5b32444L
    .end annotation
.end field

.field private e3:Z
    .annotation runtime Labcd/dy;
        field = -0x292bedb2e1675a00L
    .end annotation
.end field

.field private eU:I
    .annotation runtime Labcd/dy;
        field = -0x4f758a1ef11ab747L
    .end annotation
.end field

.field private iW:Ljava/lang/String;
    .annotation runtime Labcd/dy;
        field = 0x310213780788648L
    .end annotation
.end field

.field private kf:Ljava/lang/String;
    .annotation runtime Labcd/dy;
        field = -0x1ca512964c587229L
    .end annotation
.end field

.field private n5:Ljava/lang/String;
    .annotation runtime Labcd/dy;
        field = -0x1c9fbd4861535668L
    .end annotation
.end field

.field private pO:Z
    .annotation runtime Labcd/dy;
        field = 0xbc88ae5d9bfd2b8L
    .end annotation
.end field

.field private sE:Z
    .annotation runtime Labcd/dy;
        field = -0x5c05673cf9f85039L
    .end annotation
.end field

.field private sg:Landroid/animation/AnimatorSet;
    .annotation runtime Labcd/dy;
        field = 0x55629627a31b0f8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x27e6f9785c85250L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x43d19691d8b324dL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v3, Lcom/aide/ui/AIDEEditorCompletion;

    invoke-direct {v3, p0}, Lcom/aide/ui/AIDEEditorCompletion;-><init>(Lcom/aide/ui/AIDEEditor;)V

    iput-object v3, p0, Lcom/aide/ui/AIDEEditor;->Z1:Lcom/aide/ui/AIDEEditorCompletion;

    .line 3
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->sh()V
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v3

    .line 4
    sget-boolean v4, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v4, :cond_23

    invoke-static {v3, v1, v2, v0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x3e4f6978c53527L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x1331c5effa87ea8L  # -6.191000026711815E302

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance v0, Lcom/aide/ui/AIDEEditorCompletion;

    invoke-direct {v0, p0}, Lcom/aide/ui/AIDEEditorCompletion;-><init>(Lcom/aide/ui/AIDEEditor;)V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditor;->Z1:Lcom/aide/ui/AIDEEditorCompletion;

    .line 7
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->sh()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    .line 8
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x1331c5effa87ea8L  # -6.191000026711815E302

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = -0xb8531f020dd2638L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_14

    const-wide v1, 0x134f77531e77973L

    const/4 v3, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/views/CodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance v0, Lcom/aide/ui/AIDEEditorCompletion;

    invoke-direct {v0, p0}, Lcom/aide/ui/AIDEEditorCompletion;-><init>(Lcom/aide/ui/AIDEEditor;)V

    iput-object v0, p0, Lcom/aide/ui/AIDEEditor;->Z1:Lcom/aide/ui/AIDEEditorCompletion;

    .line 11
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->sh()V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    .line 12
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_38

    const-wide v2, 0x134f77531e77973L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method static synthetic AL(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x1e960b1e632d2360L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method

.method private BR()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x2005a0fb1c313d6fL
    .end annotation

    const-wide v0, 0x4daedc831fe71810L  # 1.625041104924871E66

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/AIDEEditor$t;

    invoke-direct {v3, p0}, Lcom/aide/ui/AIDEEditor$t;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->setModel(Lcom/aide/ui/views/editor/Model;)V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setHidden(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OEditor;->setEditable(Z)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method private Bx(II)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x251661c828648041L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_16

    const-wide v0, 0x2674181e4c17290L

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->CU()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OConsole;->getSelectionVisibility()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->OW(II)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AndroidHelper;->aM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 5
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->Gj()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 6
    :cond_40
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/aide/ui/AIDEEditor;->lp(IIII)V

    .line 7
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->kQ()V

    .line 8
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->Xa()V

    .line 9
    :cond_4d
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->gW()V

    .line 10
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/OEditor;->uC()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 11
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->ys()V
    :try_end_5d
    .catchall {:try_start_0 .. :try_end_5d} :catchall_5e

    :cond_5d
    return-void

    :catchall_5e
    move-exception v0

    .line 12
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_77

    const-wide v2, 0x2674181e4c17290L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    throw v0
.end method

.method static synthetic CU(Lcom/aide/ui/AIDEEditor;)Z
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x1708f4e272496ab5L
    .end annotation

    .line 1
    iget-boolean p0, p0, Lcom/aide/ui/AIDEEditor;->pO:Z

    return p0
.end method

.method static synthetic Eq(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/MainActivity;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0xaff869953ac1435L
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Ev(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x183f5e0f508eeea0L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic FN(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x1505116993568100L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method

.method private Jm(III)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x37b1b2225d768418L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_1c

    const-wide v1, 0xb6a1dd07d2cbb37L

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
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->J0()Lcom/aide/ui/services/ErrorService;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p1

    move v6, p3

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/aide/ui/services/ErrorService;->BT(Ljava/lang/String;IIII)Lcom/aide/engine/SyntaxError;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->J0()Lcom/aide/ui/services/ErrorService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aide/ui/services/ErrorService;->I(Lcom/aide/engine/SyntaxError;)V

    .line 5
    :cond_35
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->OW(II)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p0, p1, p3}, Lcom/aide/ui/views/CodeEditText;->OW(II)Z

    move-result v0

    if-nez v0, :cond_44

    .line 6
    invoke-virtual {p0, p1, p2, p1, p3}, Lcom/aide/ui/AIDEEditor;->lp(IIII)V

    .line 7
    :cond_44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 8
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->kQ()V

    .line 9
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->gW()V

    .line 10
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->Pa()V

    goto :goto_7c

    .line 11
    :cond_54
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->Pa()V

    .line 12
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar_container"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7c

    const/16 v1, 0x11

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z
    :try_end_7c
    .catchall {:try_start_0 .. :try_end_7c} :catchall_7d

    :cond_7c
    :goto_7c
    return-void

    :catchall_7d
    move-exception v0

    .line 16
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_9b

    const-wide v2, 0xb6a1dd07d2cbb37L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9b
    throw v0
.end method

.method static synthetic WB(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x13d583498c09a7dcL
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Xa(Lcom/aide/ui/AIDEEditor;)Landroid/animation/AnimatorSet;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x10b3710cbf8e0d8L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/AIDEEditor;->sg:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic aq(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x2142b9c640fdc617L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic et(Lcom/aide/ui/AIDEEditor;)V
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x1ed219f4d2f53df0L
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->qP()V

    return-void
.end method

.method private fN()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x8ef500c60859537L
    .end annotation

    const-wide v0, 0x8a2c9bdc9787648L  # 4.55214002036637E-267

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/AndroidHelper;->U2(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method static synthetic fY(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x14327497cad2c940L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method

.method private getActivity()Lcom/aide/ui/MainActivity;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x2e8434cd6c053b2cL
    .end annotation

    const-wide v0, 0x2e816842052beb89L  # 1.1200607485138442E-84

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/MainActivity;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v2

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method private getEditorModel()Lcom/aide/ui/AIDEEditor$t;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x130690ed1a6c0c93L
    .end annotation

    const-wide v0, -0x3a1860b270203be0L  # -5.848592565949835E28

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->getEditorModel()Lcom/aide/ui/views/editor/EditorModel;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/AIDEEditor$t;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method private getIndentationSize()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x5f0b31b7b6662119L
    .end annotation

    const-wide v0, -0x5b73d5f110cd520cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".java"

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3
    invoke-static {}, Lcom/aide/ui/AppPreferences;->P8()I

    move-result v0

    return v0

    :cond_21
    const-string v3, ".js"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 5
    invoke-static {}, Lcom/aide/ui/AppPreferences;->nw()I

    move-result v0

    return v0

    :cond_2e
    const-string v3, ".c"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_94

    const-string v3, ".cpp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_94

    const-string v3, ".h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_94

    const-string v3, ".cc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_94

    const-string v3, ".hh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_94

    const-string v3, ".hpp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    goto :goto_94

    :cond_5f
    const-string v3, ".xml"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 8
    invoke-static {}, Lcom/aide/ui/AppPreferences;->XX()I

    move-result v0

    return v0

    :cond_6c
    const-string v3, ".html"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8f

    const-string v3, ".htm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    goto :goto_8f

    :cond_7d
    const-string v3, ".css"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 11
    invoke-static {}, Lcom/aide/ui/AppPreferences;->u7()I

    move-result v0

    return v0

    .line 12
    :cond_8a
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v0

    return v0

    .line 13
    :cond_8f
    :goto_8f
    invoke-static {}, Lcom/aide/ui/AppPreferences;->rN()I

    move-result v0

    return v0

    .line 14
    :cond_94
    :goto_94
    invoke-static {}, Lcom/aide/ui/AppPreferences;->VH()I

    move-result v0
    :try_end_98
    .catchall {:try_start_5 .. :try_end_98} :catchall_99

    return v0

    :catchall_99
    move-exception v2

    .line 15
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_a1

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_a1
    throw v2
.end method

.method static synthetic hK(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x376538b34b57f7cL
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic hz(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0xb1b395300e13fb0L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic jJ(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/AIDEEditor$t;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x1c76ac3281ee97fdL
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object p0

    return-object p0
.end method

.method static synthetic jO(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x125f01683e46a6bL
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic jw(Lcom/aide/ui/AIDEEditor;)I
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0xc33a569e920f7a0L
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getIndentationSize()I

    move-result p0

    return p0
.end method

.method static synthetic k2(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/AIDEEditorCompletion;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x6cf472cc01e6eb4L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/AIDEEditor;->Z1:Lcom/aide/ui/AIDEEditorCompletion;

    return-object p0
.end method

.method private kf([CIILjava/lang/String;)I
    .registers 14
    .annotation runtime Labcd/ey;
        method = 0x593fdd6c989fe44L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_19

    const-wide v1, -0x5cd3285d97b3bec1L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/iy;->J0(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    move v0, p2

    :goto_1a
    if-gt v0, p3, :cond_3c

    const/4 v1, 0x0

    .line 1
    :goto_1d
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 2
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    add-int v3, v0, v1

    aget-char v3, p1, v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_3e

    if-eq v2, v3, :cond_38

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_3b
    return v0

    :cond_3c
    const/4 p1, -0x1

    return p1

    :catchall_3e
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x5cd3285d97b3bec1L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/iy;->a8(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    goto :goto_5b

    :goto_5a
    throw v0

    :goto_5b
    goto :goto_5a
.end method

.method static synthetic ko(Lcom/aide/ui/AIDEEditor;)V
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x1dac5e31a27b91e5L
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->oy()V

    return-void
.end method

.method static synthetic mb(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x2247f766a4534123L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic oY(Lcom/aide/ui/AIDEEditor;II)V
    .registers 3
    .annotation runtime Labcd/ey;
        method = 0x211d99ef2dc8cfdbL
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/AIDEEditor;->Bx(II)V

    return-void
.end method

.method private oa(Landroid/widget/TextView;)V
    .registers 14
    .annotation runtime Labcd/ey;
        method = 0x9b72fd71b8ccb24L
    .end annotation

    const-string v0, "translationX"

    const-wide v1, -0xe1c500dd7fd76dbL  # -4.102347675233887E240

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_e
    iget-object v3, p0, Lcom/aide/ui/AIDEEditor;->sg:Landroid/animation/AnimatorSet;

    const/4 v4, 0x1

    if-nez v3, :cond_69

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41700000  # 15.0f

    mul-float v3, v3, v5

    const/16 v5, 0x12c

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v8, v7, v9

    aput v3, v7, v4

    .line 3
    invoke-static {p1, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v10, v5

    .line 4
    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v5, v6, [F

    aput v3, v5, v9

    aput v8, v5, v4

    .line 6
    invoke-static {p1, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/AIDEEditor;->sg:Landroid/animation/AnimatorSet;

    .line 10
    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 11
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor;->sg:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/aide/ui/AIDEEditor$i;

    invoke-direct {v3, p0}, Lcom/aide/ui/AIDEEditor$i;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    :cond_69
    iput-boolean v4, p0, Lcom/aide/ui/AIDEEditor;->pO:Z

    .line 13
    iget-object v0, p0, Lcom/aide/ui/AIDEEditor;->sg:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/aide/ui/AIDEEditor;->sg:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_78
    .catchall {:try_start_7 .. :try_end_78} :catchall_79

    :cond_78
    return-void

    :catchall_79
    move-exception v0

    .line 14
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_81

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_81
    throw v0
.end method

.method private oy()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x191c251e25db9bbfL
    .end annotation

    const-wide v0, 0x52a9e617e416dbf8L  # 1.6486497348242502E90

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->J0()Lcom/aide/ui/services/ErrorService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/services/ErrorService;->sG(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aide/ui/AIDEEditor$t;->uC(Ljava/util/List;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method private pN()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2f8f2c2458e60687L
    .end annotation

    const-wide v0, 0x7635beefd7652c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getDebugger()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/debugger/Debugger;->VH(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aide/ui/AIDEEditor$t;->hx(Ljava/util/List;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method private qP()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x1321e3f6cb7c60b0L
    .end annotation

    const-wide v0, 0x691a07b5b9b88a71L  # 1.945777955372681E198

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    .line 1
    iput-boolean v2, p0, Lcom/aide/ui/AIDEEditor;->pO:Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method static synthetic qp(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x196ecf87f06d6bfbL
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method

.method private sh()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x2041340a401212bfL
    .end annotation

    const-wide v0, 0x1f607bfd1d5fbb44L  # 1.50080269938203E-157

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->BR()V

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->J0()Lcom/aide/ui/services/ErrorService;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/aide/ui/services/ErrorService;->u7(Lcom/aide/ui/services/ErrorService$ErrorListener;)V

    .line 3
    new-instance v2, Lcom/aide/ui/AIDEEditor$k;

    invoke-direct {v2, p0}, Lcom/aide/ui/AIDEEditor$k;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->we(Lcom/aide/ui/views/CodeEditText$d;)V

    .line 4
    new-instance v2, Lcom/aide/ui/AIDEEditor$l;

    invoke-direct {v2, p0}, Lcom/aide/ui/AIDEEditor$l;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->J0(Lcom/aide/ui/views/CodeEditText$d;)V

    .line 5
    new-instance v2, Lcom/aide/ui/AIDEEditor$m;

    invoke-direct {v2, p0}, Lcom/aide/ui/AIDEEditor$m;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->J8(Lcom/aide/ui/views/CodeEditText$d;)V

    .line 6
    new-instance v2, Lcom/aide/ui/AIDEEditor$n;

    invoke-direct {v2, p0}, Lcom/aide/ui/AIDEEditor$n;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->XL(Lcom/aide/ui/views/CodeEditText$d;)V

    .line 7
    new-instance v2, Lcom/aide/ui/AIDEEditor$o;

    invoke-direct {v2, p0}, Lcom/aide/ui/AIDEEditor$o;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->Ws(Lcom/aide/ui/views/CodeEditText$d;)V

    .line 8
    new-instance v2, Lcom/aide/ui/AIDEEditor$p;

    invoke-direct {v2, p0}, Lcom/aide/ui/AIDEEditor$p;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->QX(Lcom/aide/ui/views/CodeEditText$d;)V

    .line 9
    new-instance v2, Lcom/aide/ui/AIDEEditor$q;

    invoke-direct {v2, p0}, Lcom/aide/ui/AIDEEditor$q;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->aM(Lcom/aide/ui/views/CodeEditText$d;)V

    .line 10
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/AIDEEditor$r;

    invoke-direct {v3, p0}, Lcom/aide/ui/AIDEEditor$r;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->addCaretMoveListener(Lcom/aide/ui/views/editor/CaretMoveListener;)V

    .line 11
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/AIDEEditor$s;

    invoke-direct {v3, p0}, Lcom/aide/ui/AIDEEditor$s;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->addCaretMoveListener(Lcom/aide/ui/views/editor/CaretMoveListener;)V

    .line 12
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/AIDEEditor$a;

    invoke-direct {v3, p0}, Lcom/aide/ui/AIDEEditor$a;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->addCaretMoveListener(Lcom/aide/ui/views/editor/CaretMoveListener;)V

    .line 13
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/AIDEEditor$b;

    invoke-direct {v3, p0}, Lcom/aide/ui/AIDEEditor$b;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->addSelectionListener(Lcom/aide/ui/views/editor/SelectionListener;)V

    .line 14
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->cT()V
    :try_end_81
    .catchall {:try_start_5 .. :try_end_81} :catchall_82

    return-void

    :catchall_82
    move-exception v2

    .line 15
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_8a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8a
    throw v2
.end method

.method static synthetic w9(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0xf4636eaa9d647d3L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic wc(Lcom/aide/ui/AIDEEditor;III)V
    .registers 4
    .annotation runtime Labcd/ey;
        method = 0xe66842b14aa7f8bL
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/AIDEEditor;->Jm(III)V

    return-void
.end method

.method static synthetic ye(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x23b4da6580a3ca3L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zh(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/views/CodeEditText$EditorView;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0xbdd01b55bbfc115L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public AE()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x19305499889bed0cL
    .end annotation

    const-wide v0, -0x202333897ff71429L  # -6.033237696243834E153

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->CU()Z

    move-result v2

    if-nez v2, :cond_19

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->gW()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public An(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)V
    .registers 35
    .annotation runtime Labcd/ey;
        method = -0x39745a4f77923d50L
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    const/4 v15, 0x6

    const/16 v16, 0x5

    const/16 v17, 0x4

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v12, 0xa

    const-wide v13, -0x1ce8a0bd05c3355L  # -7.308340493872736E299

    :try_start_2a
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_65

    new-array v0, v12, [Ljava/lang/Object;

    aput-object v2, v0, v21

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v12, v0, v20

    new-instance v12, Ljava/lang/Boolean;

    invoke-direct {v12, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v12, v0, v19

    aput-object v5, v0, v18

    aput-object v6, v0, v17

    new-instance v12, Ljava/lang/Boolean;

    invoke-direct {v12, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v12, v0, v16

    aput-object v8, v0, v15

    const/4 v12, 0x7

    aput-object v9, v0, v12

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v10}, Ljava/lang/Integer;-><init>(I)V

    const/16 v23, 0x8

    aput-object v12, v0, v23

    new-instance v12, Ljava/lang/Boolean;

    invoke-direct {v12, v11}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v22, 0x9

    aput-object v12, v0, v22

    invoke-static {v13, v14, v1, v0}, Labcd/iy;->QX(JLjava/lang/Object;[Ljava/lang/Object;)V

    .line 1
    :cond_65
    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->lg()V

    .line 2
    iput-object v5, v1, Lcom/aide/ui/AIDEEditor;->n5:Ljava/lang/String;

    .line 3
    iput-object v2, v1, Lcom/aide/ui/AIDEEditor;->Q6:Ljava/lang/String;

    .line 4
    iput-boolean v7, v1, Lcom/aide/ui/AIDEEditor;->sE:Z

    .line 5
    iput-object v6, v1, Lcom/aide/ui/AIDEEditor;->kf:Ljava/lang/String;

    .line 6
    iput-object v8, v1, Lcom/aide/ui/AIDEEditor;->iW:Ljava/lang/String;

    .line 7
    iput-object v9, v1, Lcom/aide/ui/AIDEEditor;->Jl:Ljava/lang/String;

    .line 8
    iput v3, v1, Lcom/aide/ui/AIDEEditor;->eU:I

    .line 9
    iput-boolean v4, v1, Lcom/aide/ui/AIDEEditor;->e3:Z

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/AIDEEditor;->Of()V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/AIDEEditor;->q7()V

    if-ltz v10, :cond_8b

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/aide/ui/AIDEEditor$t;->ep(IZ)V

    .line 13
    :cond_8b
    new-instance v0, Lcom/aide/ui/AIDEEditor$e;

    invoke-direct {v0, v1}, Lcom/aide/ui/AIDEEditor$e;-><init>(Lcom/aide/ui/AIDEEditor;)V

    const-wide/16 v13, 0xa

    invoke-virtual {v1, v0, v13, v14}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_95
    .catchall {:try_start_2a .. :try_end_95} :catchall_96

    return-void

    :catchall_96
    move-exception v0

    .line 14
    sget-boolean v12, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v12, :cond_d9

    const/16 v12, 0xa

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v2, v12, v21

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v12, v20

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v12, v19

    aput-object v5, v12, v18

    aput-object v6, v12, v17

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v12, v16

    aput-object v8, v12, v15

    const/4 v2, 0x7

    aput-object v9, v12, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    const/16 v3, 0x8

    aput-object v2, v12, v3

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v11}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v3, 0x9

    aput-object v2, v12, v3

    const-wide v2, -0x1ce8a0bd05c3355L  # -7.308340493872736E299

    invoke-static {v0, v2, v3, v1, v12}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_d9
    throw v0
.end method

.method public Cz()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x68cc2c53acf56a98L
    .end annotation

    const-wide v0, -0xf5b1570b9e85a59L  # -4.15652537676879E234

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->er()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public DW()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x238230c2f3f3e5bfL
    .end annotation

    const-wide v0, -0x9c1c6f45c5980fcL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Gj()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x30fc0696be74612fL
    .end annotation

    const-wide v0, -0x4263720d950f9ec4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->jO()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x3e714d8b7b04b60fL
    .end annotation

    const-wide v0, -0x22c027c21de24f38L  # -1.5168934349509753E141

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->oy()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public IS(II)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x1954bf3da780d849L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_16

    const-wide v0, 0xb2342f836e63340L  # 5.1312838562102E-255

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/aide/ui/views/editor/EditorModel;->Pa(IILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0xb2342f836e63340L  # 5.1312838562102E-255

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public Jl(II)Lcom/aide/engine/SyntaxError;
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x21f6b73c2f86114bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_16

    const-wide v0, -0x138492f668767860L  # -3.693161125430236E214

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/AIDEEditor$t;->ba(II)Lcom/aide/engine/SyntaxError;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-object p1

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_3c

    const-wide v2, -0x138492f668767860L  # -3.693161125430236E214

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method public MP(I)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0xec280c0367fdabdL
    .end annotation

    const-wide v0, 0x208bea9b580b0730L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->Mr()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/AIDEEditor$t;->HO(I)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method protected Mr()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x9a8dc67d2c7ed05L
    .end annotation

    const-wide v0, -0x646631066c7ce60L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_28

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method protected Mz()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x4b8ec7c3507b4c03L
    .end annotation

    const-wide v0, 0x2d0b9e88e7c15b90L  # 1.059262576770372E-91

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->Xa()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Nh(II)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x521689c2d7c4ca5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_16

    const-wide v0, 0xfd4c4c3e9d79ff0L

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/views/editor/OConsole;->TI(II)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0xfd4c4c3e9d79ff0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public Of()V
    .registers 16
    .annotation runtime Labcd/ey;
        method = -0x2301ebee8be576afL
    .end annotation

    const-wide v0, 0x3ac54bf8e46dd740L  # 1.3762712809524894E-25

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->qP()V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderView()Landroid/view/View;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/aide/ui/AIDEEditor;->Q6:Ljava/lang/String;

    const v4, 0x7f080063

    const v5, 0x7f080069

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v3, :cond_17f

    .line 4
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f08006d

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08006e

    .line 8
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080066

    .line 9
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f080067

    .line 10
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f080068

    .line 11
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f08006b

    .line 12
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    const v11, 0x7f08006a

    .line 13
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 14
    iget-boolean v12, p0, Lcom/aide/ui/AIDEEditor;->e3:Z

    if-eqz v12, :cond_7a

    const/4 v12, 0x0

    goto :goto_7c

    :cond_7a
    const/16 v12, 0x8

    :goto_7c
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget v12, p0, Lcom/aide/ui/AIDEEditor;->eU:I

    invoke-virtual {v10, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 16
    invoke-virtual {v10}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v13, -0x1

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 17
    iget-object v12, p0, Lcom/aide/ui/AIDEEditor;->Q6:Ljava/lang/String;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v12, p0, Lcom/aide/ui/AIDEEditor;->n5:Ljava/lang/String;

    if-eqz v12, :cond_ac

    .line 19
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v12, p0, Lcom/aide/ui/AIDEEditor;->n5:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v12, p0, Lcom/aide/ui/AIDEEditor;->kf:Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b2

    .line 23
    :cond_ac
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    :goto_b2
    iget-object v12, p0, Lcom/aide/ui/AIDEEditor;->Jl:Ljava/lang/String;

    if-nez v12, :cond_bd

    .line 26
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d1

    .line 28
    :cond_bd
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object v6, p0, Lcom/aide/ui/AIDEEditor;->iW:Ljava/lang/String;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v6, p0, Lcom/aide/ui/AIDEEditor;->Jl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :goto_d1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/aide/common/AndroidHelper;->we(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/AndroidHelper;->J8(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/AndroidHelper;->tp(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/AndroidHelper;->J0(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/AndroidHelper;->J8(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, 0x7f08006c

    .line 37
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 38
    new-instance v6, Lcom/aide/ui/AIDEEditor$f;

    invoke-direct {v6, p0}, Lcom/aide/ui/AIDEEditor$f;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    new-instance v6, Lcom/aide/ui/AIDEEditor$g;

    invoke-direct {v6, p0, v5}, Lcom/aide/ui/AIDEEditor$g;-><init>(Lcom/aide/ui/AIDEEditor;Landroid/widget/TextView;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 40
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->fN()Z

    move-result v6

    if-eqz v6, :cond_13c

    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x42400000  # 48.0f

    mul-float v9, v9, v6

    float-to-int v9, v9

    const/high16 v12, 0x41d80000  # 27.0f

    mul-float v6, v6, v12

    float-to-int v6, v6

    .line 42
    invoke-virtual {v4, v9, v6, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 43
    :cond_13c
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/aide/common/AndroidHelper;->gn(Landroid/content/Context;)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/AndroidHelper;->gn(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    invoke-virtual {v10}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/AndroidHelper;->gn(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 46
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/AndroidHelper;->gn(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 48
    iget-boolean v2, p0, Lcom/aide/ui/AIDEEditor;->sE:Z

    if-eqz v2, :cond_1db

    .line 49
    invoke-direct {p0, v5}, Lcom/aide/ui/AIDEEditor;->oa(Landroid/widget/TextView;)V

    goto :goto_1db

    .line 50
    :cond_17f
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f080065

    .line 53
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f080061

    .line 55
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/ui/util/FileSystem;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f080062

    .line 57
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 58
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/ui/AppFileIcons;->j6(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x7f080064

    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/AIDEEditor$h;

    invoke-direct {v3, p0}, Lcom/aide/ui/AIDEEditor$h;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1db
    .catchall {:try_start_5 .. :try_end_1db} :catchall_1dc

    :cond_1db
    :goto_1db
    return-void

    :catchall_1dc
    move-exception v2

    .line 60
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1e4

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e4
    throw v2
.end method

.method public P8(Lcom/aide/ui/command/KeyStrokeCommand;)Ljava/util/List;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1608642ab155d400L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aide/ui/command/KeyStrokeCommand;",
            ")",
            "Ljava/util/List<",
            "Lcom/aide/common/KeyStroke;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x7b6cdc6ad575afL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->Mr()Lcom/aide/ui/services/KeyBindingService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/services/KeyBindingService;->j6(Lcom/aide/ui/command/KeyStrokeCommand;)Ljava/util/List;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Pa()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x64a8d47347672a38L
    .end annotation

    const-wide v0, -0x5cb2846733b4597L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->q7()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Q6()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x14a551cd82468498L
    .end annotation

    const-wide v0, 0x80389fa1a354e61L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Lcom/aide/ui/AIDEEditor$c;

    invoke-direct {v2, p0}, Lcom/aide/ui/AIDEEditor$c;-><init>(Lcom/aide/ui/AIDEEditor;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    new-instance v2, Lcom/aide/ui/AIDEEditor$d;

    invoke-direct {v2, p0}, Lcom/aide/ui/AIDEEditor$d;-><init>(Lcom/aide/ui/AIDEEditor;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public QO()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x765fd5288f94858fL
    .end annotation

    const-wide v0, 0xf5578f72020fde8L  # 8.441632151030894E-235

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/AIDEEditor;->Jm(III)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method protected U2()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x6022d057c4d92927L
    .end annotation

    const-wide v0, -0x9a6a4ca8987ab8cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Z1:Lcom/aide/ui/AIDEEditorCompletion;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorCompletion;->lg()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Z1:Lcom/aide/ui/AIDEEditorCompletion;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorCompletion;->EQ()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0

    :catchall_1d
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method protected Z1(Ljava/lang/String;)Lcom/aide/ui/services/OpenFileService$OpenFileModel;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x170cbed7b9308f30L
    .end annotation

    const-wide v0, -0x1025940b57583341L  # -6.409401609746032E230

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Lcom/aide/ui/AIDEEditor$t;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/AIDEEditor$t;-><init>(Lcom/aide/ui/AIDEEditor;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public varargs Za(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x852b997a0040973L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x613a676c73134100L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/AIDEEditor$t;->qU(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_25

    const-wide v2, 0x613a676c73134100L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method

.method public a5(Ljava/lang/String;)Lcom/aide/ui/services/OpenFileService$OpenFileModel;
    .registers 8
    .annotation runtime Labcd/ey;
        method = -0xbdfcb7a28c26b03L
    .end annotation

    const-wide v0, -0x8c668e703d70108L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/services/OpenFileService;->getOpenFileModel(Ljava/lang/String;)Lcom/aide/ui/services/OpenFileService$OpenFileModel;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 2
    invoke-virtual {p0, p1}, Lcom/aide/ui/AIDEEditor;->Z1(Ljava/lang/String;)Lcom/aide/ui/services/OpenFileService$OpenFileModel;

    move-result-object v2

    .line 3
    :cond_1a
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/aide/ui/AIDEEditor$t;

    invoke-virtual {v3, v4}, Lcom/aide/ui/views/editor/OEditor;->setModel(Lcom/aide/ui/views/editor/Model;)V

    .line 4
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/aide/ui/views/editor/OConsole;->setHidden(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v3

    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->cb(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    const/4 v4, 0x1

    :cond_37
    invoke-virtual {v3, v4}, Lcom/aide/ui/views/editor/OEditor;->setEditable(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OEditor;->uC()Z

    move-result v3

    if-nez v3, :cond_47

    .line 7
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->e3()V

    .line 8
    :cond_47
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->oy()V

    .line 9
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->pN()V

    .line 10
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->Of()V

    .line 11
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getEngineService()Lcom/aide/ui/services/EngineService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/EngineService;->ei()V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_5b

    return-object v2

    :catchall_5b
    move-exception v2

    .line 13
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_63

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v2
.end method

.method public aX()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x317043b24613fa0L
    .end annotation

    const-wide v0, 0x2d9bfb92a6c08599L  # 5.494788859399962E-89

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Z1:Lcom/aide/ui/AIDEEditorCompletion;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorCompletion;->gW()V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->gW()V

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->eU()V

    .line 4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->J0()Lcom/aide/ui/services/ErrorService;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/aide/ui/services/ErrorService;->Mz(Lcom/aide/ui/services/ErrorService$ErrorListener;)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public cT()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x28b4bba5ec3258e3L
    .end annotation

    const-wide v0, -0x19ebbb6a97ff9d68L  # -5.382527126026976E183

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/AppPreferences;->BT()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/CodeEditText;->setIsLightTheme(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/AppPreferences;->sy()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setTabSize(I)V

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/AppPreferences;->gW()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setInsertTabsAsSpaces(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->q7()V

    .line 5
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Z1:Lcom/aide/ui/AIDEEditorCompletion;

    if-eqz v2, :cond_35

    .line 6
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Z1:Lcom/aide/ui/AIDEEditorCompletion;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorCompletion;->we()V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    :cond_35
    return-void

    :catchall_36
    move-exception v2

    .line 7
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v2
.end method

.method public ca(I)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x26af539c9c5a62ddL
    .end annotation

    const-wide v0, -0x2f94c44a31d85fa0L  # -2.5227152716965998E79

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-virtual {p0, p1}, Lcom/aide/ui/AIDEEditor;->MP(I)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public ce()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1b74c9ce8e4f9c7dL
    .end annotation

    const-wide v0, -0x63c03e57708a570L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Z1:Lcom/aide/ui/AIDEEditorCompletion;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorCompletion;->SI()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public e3()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x39499686495a8050L
    .end annotation

    const-wide v0, 0x359c9c8042eb1d9bL  # 1.9117839695521937E-50

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public e9(Z)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x47d42b7716c77053L
    .end annotation

    const-wide v0, -0x2f6f37084ee33104L  # -1.2438871239196752E80

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->Ws(JLjava/lang/Object;Z)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Z1:Lcom/aide/ui/AIDEEditorCompletion;

    invoke-virtual {v2, p1}, Lcom/aide/ui/AIDEEditorCompletion;->BT(Z)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public eU(I)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x2b789bf575753eddL
    .end annotation

    const-wide v0, 0x1032882020dd5164L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/aide/ui/views/editor/EditorModel;->pO(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object v2

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_29

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method protected ei(II)I
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x161185985d8a10dbL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_16

    const-wide v0, -0x25897975de642050L  # -6.09920864886022E127

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".htm"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, ".css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_4f

    .line 3
    :cond_37
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->BT(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 4
    :goto_41
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->BT(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_4e

    add-int/lit8 p2, p2, 0x1

    goto :goto_41

    :cond_4e
    return p2

    .line 5
    :cond_4f
    :goto_4f
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->BT(II)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v1, v0, :cond_64

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->BT(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_64

    :cond_62
    const/4 p1, -0x1

    return p1

    .line 6
    :cond_64
    :goto_64
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->BT(II)C

    move-result v0

    if-eq v1, v0, :cond_76

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->BT(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0
    :try_end_72
    .catchall {:try_start_0 .. :try_end_72} :catchall_79

    if-eqz v0, :cond_75

    goto :goto_76

    :cond_75
    return p2

    :cond_76
    :goto_76
    add-int/lit8 p2, p2, 0x1

    goto :goto_64

    :catchall_79
    move-exception v0

    move-object v6, v0

    .line 7
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v0, :cond_93

    const-wide v1, -0x25897975de642050L  # -6.09920864886022E127

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_93
    goto :goto_95

    :goto_94
    throw v6

    :goto_95
    goto :goto_94
.end method

.method public gG(IILjava/lang/String;)Z
    .registers 12
    .annotation runtime Labcd/ey;
        method = -0x34693d54d9a5ebbbL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_18

    const-wide v1, -0x10e2c59cb62bf3c0L  # -1.7309997235848172E227

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_18
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_20

    return v1

    .line 2
    :cond_20
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v0

    move v2, p1

    .line 3
    :goto_25
    invoke-virtual {v0}, Lcom/aide/ui/views/editor/EditorModel;->getLineCount()I

    move-result v3

    const/4 v4, 0x0

    if-gt v2, v3, :cond_52

    add-int/lit8 v3, v2, -0x1

    .line 4
    invoke-virtual {v0, v3}, Lcom/aide/ui/views/editor/EditorModel;->pO(I)[C

    move-result-object v5

    .line 5
    invoke-virtual {v0, v3}, Lcom/aide/ui/views/editor/EditorModel;->getColumnCount(I)I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v3, v6

    if-ne v2, p1, :cond_3f

    add-int/lit8 v4, p2, -0x1

    .line 6
    :cond_3f
    invoke-direct {p0, v5, v4, v3, p3}, Lcom/aide/ui/AIDEEditor;->kf([CIILjava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4f

    add-int/2addr v3, v1

    .line 7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v2, v3, v2, v0}, Lcom/aide/ui/AIDEEditor;->lp(IIII)V
    :try_end_4e
    .catchall {:try_start_0 .. :try_end_4e} :catchall_53

    return v1

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_52
    return v4

    :catchall_53
    move-exception v0

    .line 8
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_6d

    const-wide v2, -0x10e2c59cb62bf3c0L  # -1.7309997235848172E227

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6d
    goto :goto_6f

    :goto_6e
    throw v0

    :goto_6f
    goto :goto_6e
.end method

.method public getCurrentFileSpan()Lcom/aide/ui/util/FileSpan;
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x3491d1b09bb110ccL
    .end annotation

    const-wide v0, 0x27e0f7f4a9955cabL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Lcom/aide/ui/util/FileSpan;

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v5

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v6

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndLine()I

    move-result v7

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionEndColumn()I

    move-result v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/aide/ui/util/FileSpan;-><init>(Ljava/lang/String;IIII)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-object v2

    :catchall_27
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public getCustomEditorCommands()Ljava/util/List;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x65310a998d6e957L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/command/KeyStrokeCommand;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x1ae25cff9f2e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/AppCommands;->v5()Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public getDefaultFontSize()F
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x4ac1996c1d6b3ad0L
    .end annotation

    const-wide v0, 0x3b9c62e932e85883L  # 1.5027619592397368E-21

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/AndroidHelper;->EQ(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 3
    :cond_1c
    invoke-static {}, Lcom/aide/ui/AppPreferences;->EQ()I

    move-result v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_22

    int-to-float v0, v0

    return v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public getEditorPager()Lcom/aide/ui/AIDEEditorPager;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x1022878eb1453833L
    .end annotation

    const-wide v0, -0x378a5fdd3be1fa70L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x355d46fbe49d508L
    .end annotation

    const-wide v0, 0x3a0d5fae785d81bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getModel()Lcom/aide/ui/services/OpenFileService$OpenFileModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/aide/ui/services/OpenFileService$OpenFileModel;->g3()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getKeyStrokeDetector()Lcom/aide/common/KeyStrokeDetector;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x75de59c3d22fbcc0L
    .end annotation

    const-wide v0, 0xf35fb3560bf86f3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->vJ()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getModel()Lcom/aide/ui/services/OpenFileService$OpenFileModel;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x342a5fc61d8b45d8L
    .end annotation

    const-wide v0, 0x413837b6718899L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->getModel()Lcom/aide/ui/views/editor/Model;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/services/OpenFileService$OpenFileModel;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method protected getQuickKeyBarHeight()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x29e811c1661c52c3L
    .end annotation

    const-wide v0, 0x523952d4dccf5bd8L  # 1.259399507750452E88

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->Qq()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public getQuickKeys()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x24c1f561312cab78L
    .end annotation

    const-wide v0, -0x8639856d43fa337L  # -1.465445955471059E268

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const-string v2, ""

    .line 1
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getIndentationSize()I

    move-result v3

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v4

    rem-int v4, v3, v4

    const/4 v5, 0x0

    if-nez v4, :cond_37

    .line 3
    :goto_1b
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getTabSize()I

    move-result v4

    div-int v4, v3, v4

    if-ge v5, v4, :cond_4d

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_37
    :goto_37
    if-ge v5, v3, :cond_4d

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 6
    :cond_4d
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".java"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bd

    const-string v4, ".js"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    goto :goto_bd

    :cond_66
    const-string v4, ".xml"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ab

    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ab

    const-string v4, ".htm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7f

    goto :goto_ab

    :cond_7f
    const-string v4, ".css"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " { } - : . ; # % ( ) \" \' @ > = [ ] / * !"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " { } ( ) ; , . = \" | & ! [ ] < > + - / *"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :cond_ab
    :goto_ab
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " < > / = \" : @ + ( ) ; , . | & ! [ ] { } _ -"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13
    :cond_bd
    :goto_bd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " { } ( ) ; , . = \" | & ! [ ] < > + - / * ? : _"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_ce
    .catchall {:try_start_5 .. :try_end_ce} :catchall_cf

    return-object v0

    :catchall_cf
    move-exception v2

    .line 14
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_d7

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_d7
    goto :goto_d9

    :goto_d8
    throw v2

    :goto_d9
    goto :goto_d8
.end method

.method public getSelectionContent()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x6a91df91d610e700L
    .end annotation

    const-wide v0, 0x488374b3f53e61fbL  # 2.118556740569402E41

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2c

    .line 1
    :cond_c
    :try_start_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/editor/OConsole;->getSelectedRegion()Lcom/aide/ui/views/editor/SelectedRegion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/AbstractModel;->getSelectedRegionReader(Lcom/aide/ui/views/editor/SelectedRegion;)Ljava/io/Reader;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 3
    invoke-static {v2, v3}, Lcom/aide/common/StreamUtilities;->gn(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 4
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_28} :catch_29
    .catchall {:try_start_c .. :try_end_28} :catchall_2c

    return-object v0

    :catch_29
    :try_start_29
    const-string v0, ""
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_2c

    return-object v0

    :catchall_2c
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method protected getSideBarPadding()F
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1a2d9f336e073150L
    .end annotation

    const-wide v0, 0x2de676abfa8abbd3L  # 1.4115292656893567E-87

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->fN()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_23

    const/high16 v1, 0x42400000  # 48.0f

    mul-float v0, v0, v1

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0

    :catchall_23
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method protected getTextPaddingRight()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x3b5a519aad761b03L
    .end annotation

    const-wide v0, 0x1e68e644e94b9448L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Q6:Ljava/lang/String;

    if-eqz v2, :cond_1f

    const/high16 v2, 0x42c80000  # 100.0f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_22

    mul-float v0, v0, v2

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    float-to-int v0, v0

    return v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public iW(I)I
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x180220f9ca4a820L
    .end annotation

    const-wide v0, 0x5beef0ff146154e1L  # 7.027938137160648E134

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/AIDEEditor$t;->Ak(I)I

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public lp(IIII)V
    .registers 14
    .annotation runtime Labcd/ey;
        method = -0x6fe19b51d8145efdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_21

    const-wide v1, 0x39841c4821a39f1cL  # 1.2394037512585022E-31

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

    .line 1
    :cond_21
    invoke-super {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/CodeEditText;->lp(IIII)V

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getCurrentFileSpan()Lcom/aide/ui/util/FileSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/services/NavigateService;->VH(Lcom/aide/ui/util/FileSpan;)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_53

    const-wide v2, 0x39841c4821a39f1cL  # 1.2394037512585022E-31

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

    :cond_53
    throw v0
.end method

.method public n5()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x16378905cf6378L
    .end annotation

    const-wide v0, -0x11374fab33e0abf9L  # -4.56926813298182E225

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->EQ()Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method protected nw(II)I
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x1932c770781797b4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_16

    const-wide v0, -0x13607cb8b84e3609L  # -1.6973992375217468E215

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".htm"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_53

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, ".css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_53

    .line 3
    :cond_38
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->BT(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_66

    :goto_42
    if-lt p2, v2, :cond_51

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->BT(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_51

    add-int/lit8 p2, p2, -0x1

    goto :goto_42

    :cond_51
    add-int/2addr p2, v2

    return p2

    .line 5
    :cond_53
    :goto_53
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->BT(II)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v1, v0, :cond_68

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->BT(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_68

    :cond_66
    const/4 p1, -0x1

    return p1

    :cond_68
    :goto_68
    if-lt p2, v2, :cond_7d

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->BT(II)C

    move-result v0

    if-eq v1, v0, :cond_7a

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CodeEditText;->BT(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0
    :try_end_78
    .catchall {:try_start_0 .. :try_end_78} :catchall_7f

    if-eqz v0, :cond_7d

    :cond_7a
    add-int/lit8 p2, p2, -0x1

    goto :goto_68

    :cond_7d
    add-int/2addr p2, v2

    return p2

    :catchall_7f
    move-exception v0

    move-object v6, v0

    .line 7
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v0, :cond_99

    const-wide v1, -0x13607cb8b84e3609L  # -1.6973992375217468E215

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v6

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_99
    goto :goto_9b

    :goto_9a
    throw v6

    :goto_9b
    goto :goto_9a
.end method

.method public pO(II)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x3ce4a979bb3eb7afL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_16

    const-wide v0, -0x1bd5f566fb698fe4L  # -3.2204146329952773E174

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/aide/ui/views/editor/EditorModel;->sM(IILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_3b

    const-wide v2, -0x1bd5f566fb698fe4L  # -3.2204146329952773E174

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public q7()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x658b1a07cbca9d7dL
    .end annotation

    const-wide v0, -0x44d78d7f5e3158dcL  # -1.0111156066323418E-23

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getDefaultFontSize()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/OConsole;->setFontSize(F)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method protected ro()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0xd941b8342404899L
    .end annotation

    const-wide v0, 0x170e96ff036ab8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/AIDEEditor;->Z1:Lcom/aide/ui/AIDEEditorCompletion;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorCompletion;->U2()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public sE(II)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x119f5d6652537309L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_16

    const-wide v0, 0xfc1c99b1cbda1b4L  # 8.95094393525065E-233

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/AIDEEditor$t;->nl(II)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_37

    const-wide v2, 0xfc1c99b1cbda1b4L  # 8.95094393525065E-233

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method public sM()V
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x367c3f71501144a9L
    .end annotation

    const-wide v0, 0x1a852e674d2b370L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v4

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v5

    .line 3
    invoke-virtual {p0, v3, v4, v5}, Lcom/aide/ui/views/CodeEditText;->KD(III)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/AIDEEditorPager;->Z1(Landroid/graphics/Rect;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public sg(IIC)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x3ad926e6d9fe8085L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_1c

    const-wide v1, 0x448624a7619cdae4L  # 1.3071025812940844E22

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, p3}, Ljava/lang/Character;-><init>(C)V

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_1c
    invoke-direct {p0}, Lcom/aide/ui/AIDEEditor;->getEditorModel()Lcom/aide/ui/AIDEEditor$t;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2, p3, p0}, Lcom/aide/ui/views/editor/EditorModel;->e9(IICLjava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_46

    const-wide v2, 0x448624a7619cdae4L  # 1.3071025812940844E22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p3}, Ljava/lang/Character;-><init>(C)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v0
.end method

.method protected x9(IIZ)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x1928736100d036f0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v0, :cond_1c

    const-wide v1, 0x3a5022780730e6c1L  # 8.14591350917717E-28

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    if-eqz p3, :cond_25

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p2, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/aide/ui/AIDEEditor;->Bx(II)V

    .line 2
    :cond_25
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mf;->x9()V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v1, :cond_4b

    const-wide v2, 0x3a5022780730e6c1L  # 8.14591350917717E-28

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v0
.end method

.method protected yO()V
    .registers 11
    .annotation runtime Labcd/ey;
        method = -0x4f436bd9e6c14e48L
    .end annotation

    const-wide v0, 0x255abb0d20184875L  # 9.64076935811725E-129

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->U2()V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v2

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v9

    .line 4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->J0()Lcom/aide/ui/services/ErrorService;

    move-result-object v3

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    move v5, v2

    move v6, v9

    move v7, v2

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/aide/ui/services/ErrorService;->BT(Ljava/lang/String;IIII)Lcom/aide/engine/SyntaxError;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 5
    invoke-virtual {v3}, Lcom/aide/engine/SyntaxError;->Hw()Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v4, v3, Lcom/aide/engine/SyntaxError;->AL:[Ljava/lang/String;

    if-eqz v4, :cond_56

    iget-object v4, v3, Lcom/aide/engine/SyntaxError;->AL:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_56

    .line 6
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->J0()Lcom/aide/ui/services/ErrorService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/aide/ui/services/ErrorService;->I(Lcom/aide/engine/SyntaxError;)V

    .line 7
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditTextScrollView;->lg()V

    .line 8
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {p0, v2, v9, v9}, Lcom/aide/ui/views/CodeEditText;->KD(III)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/aide/ui/AIDEEditorPager;->n5(Landroid/graphics/Rect;)V

    goto :goto_76

    .line 9
    :cond_56
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->J8()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 10
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/CodeEditTextScrollView;->lg()V

    .line 11
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {p0, v2, v9, v9}, Lcom/aide/ui/views/CodeEditText;->KD(III)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/aide/ui/AIDEEditorPager;->n5(Landroid/graphics/Rect;)V

    goto :goto_76

    .line 12
    :cond_73
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->ys()V
    :try_end_76
    .catchall {:try_start_5 .. :try_end_76} :catchall_77

    :goto_76
    return-void

    :catchall_77
    move-exception v2

    .line 13
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_7f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7f
    throw v2
.end method

.method public ys()V
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x4685393909ef78f0L
    .end annotation

    const-wide v0, -0x2e8fa97526fa525L  # -3.6757196999834045E294

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEEditor;->fN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OEditor;->uC()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/AndroidHelper;->aM(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {}, Lcom/aide/ui/AppPreferences;->QX()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 3
    :cond_26
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->Gj()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 5
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getOEditorView()Lcom/aide/ui/views/CodeEditText$EditorView;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditTextScrollView;->er()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 8
    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartLine()I

    move-result v3

    invoke-virtual {p0}, Lcom/aide/ui/views/CodeEditText;->getSelectionStartColumn()I

    move-result v4

    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->getDefaultFontSize()F

    move-result v5

    new-instance v6, Lcom/aide/ui/AIDEEditor$j;

    invoke-direct {v6, p0}, Lcom/aide/ui/AIDEEditor$j;-><init>(Lcom/aide/ui/AIDEEditor;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/aide/ui/views/CodeEditTextScrollView;->dx(IIFLjava/lang/Runnable;)V

    goto :goto_6d

    .line 9
    :cond_6a
    invoke-virtual {p0}, Lcom/aide/ui/AIDEEditor;->Q6()V
    :try_end_6d
    .catchall {:try_start_5 .. :try_end_6d} :catchall_6e

    :cond_6d
    :goto_6d
    return-void

    :catchall_6e
    move-exception v2

    .line 10
    sget-boolean v3, Lcom/aide/ui/AIDEEditor;->Gj:Z

    if-eqz v3, :cond_76

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_76
    throw v2
.end method
