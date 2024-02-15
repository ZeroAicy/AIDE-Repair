.class public Lcom/aide/ui/services/RunService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Labcd/cy;
    clazz = -0xbb50e75b5edbbb3L
    container = -0xbb50e75b5edbbb3L
    user = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/services/RunService$c;,
        Lcom/aide/ui/services/RunService$d;,
        Lcom/aide/ui/services/RunService$a;,
        Lcom/aide/ui/services/RunService$b;
    }
.end annotation


# static fields
.field private static synthetic FH:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field

.field private static synthetic Hw:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field


# instance fields
.field private DW:Z
    .annotation runtime Labcd/dy;
        field = 0x3129f412619c08e8L
    .end annotation
.end field

.field private j6:Z
    .annotation runtime Labcd/dy;
        field = 0xdd3093e8e8c09e0L
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/services/RunService;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x2806510fca08849bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x251ae5af3e345998L  # -7.313884934540721E129

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/services/RunService;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/services/RunService;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static synthetic DW(Lcom/aide/ui/services/RunService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Labcd/ey;
        method = 0x49e2ac638f88a308L
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/services/RunService;->gn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic FH(Lcom/aide/ui/services/RunService;Ljava/lang/String;)V
    .registers 2
    .annotation runtime Labcd/ey;
        method = 0x17077d67cce7fdf5L
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/aide/ui/services/RunService;->u7(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Hw(Lcom/aide/ui/services/RunService;)Z
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x4407cb5c10c66d0L
    .end annotation

    .line 1
    iget-boolean p0, p0, Lcom/aide/ui/services/RunService;->j6:Z

    return p0
.end method

.method private Zo(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0xb2e5a926c46428L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/services/RunService;->FH:Z

    if-eqz v0, :cond_14

    const-wide v1, 0x2bc5d200f812ec44L  # 7.980914867827032E-98

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    if-nez p1, :cond_1a

    .line 1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_3a

    .line 2
    :cond_1a
    iget-boolean v0, p0, Lcom/aide/ui/services/RunService;->DW:Z

    if-eqz v0, :cond_2a

    .line 3
    iget-boolean v0, p0, Lcom/aide/ui/services/RunService;->j6:Z

    if-eqz v0, :cond_26

    .line 4
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_3a

    .line 5
    :cond_26
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_3a

    :cond_2a
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/aide/ui/services/RunService;->DW:Z

    .line 7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aide/ui/services/RunService$c;

    invoke-direct {v1, p0, p2, p3}, Lcom/aide/ui/services/RunService$c;-><init>(Lcom/aide/ui/services/RunService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3b

    :goto_3a
    return-void

    :catchall_3b
    move-exception v0

    .line 9
    sget-boolean v1, Lcom/aide/ui/services/RunService;->Hw:Z

    if-eqz v1, :cond_51

    const-wide v2, 0x2bc5d200f812ec44L  # 7.980914867827032E-98

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method private gn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x6c9b57e20e6733bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/services/RunService;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x4c08821e69329d87L  # -2.3390296645208516E-58

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "Run app with root"

    .line 1
    invoke-static {v0}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aide/ui/services/RunService$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/aide/ui/services/RunService$d;-><init>(Lcom/aide/ui/services/RunService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    .line 4
    sget-boolean v1, Lcom/aide/ui/services/RunService;->Hw:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x4c08821e69329d87L  # -2.3390296645208516E-58

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method private static synthetic j6(Ljava/lang/Object;Landroid/content/Intent;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0, p1}, Labcd/iy;->BT(Ljava/lang/Object;Landroid/content/Intent;)V

    return-void
.end method

.method private u7(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x49cadf52bb10d2cfL
    .end annotation

    invoke-static {p1}, Lio/github/zeroaicy/aide/extend/DistributeEvents;->instalApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide v0, -0x4aff4e590763bd0bL  # -2.178662656060501E-53

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/RunService;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->isTrainerMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->nw()Lcom/aide/ui/trainer/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/b;->Ws()Z

    move-result v2

    if-nez v2, :cond_1d

    return-void

    .line 3
    :cond_1d
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v3, 0x1000

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const/4 v5, 0x1

    if-lt v3, v4, :cond_4a

    .line 7
    invoke-static {}, Lcom/aide/ui/App;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/util/FileSystem;->j3()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v6}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_53

    .line 9
    :cond_4a
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    :goto_53
    const-string v4, "application/vnd.android.package-archive"

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-static {}, Lcom/aide/ui/App;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_99

    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_99

    .line 13
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 14
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v5, "com.android.packageinstaller"

    .line 15
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 16
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 17
    :cond_99
    invoke-static {}, Lcom/aide/ui/App;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/aide/ui/services/RunService;->j6(Ljava/lang/Object;Landroid/content/Intent;)V

    const-string v2, "Run app without root"

    .line 18
    invoke-static {v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_5 .. :try_end_a5} :catchall_a6

    return-void

    :catchall_a6
    move-exception v2

    .line 19
    sget-boolean v3, Lcom/aide/ui/services/RunService;->Hw:Z

    if-eqz v3, :cond_ae

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_ae
    goto :goto_b0

    :goto_af
    throw v2

    :goto_b0
    goto :goto_af
.end method

.method public static synthetic v5(Lcom/aide/ui/services/RunService;Z)Z
    .registers 2
    .annotation runtime Labcd/ey;
        method = -0x14add2f7cb9276ebL
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/aide/ui/services/RunService;->j6:Z

    return p1
.end method


# virtual methods
.method public VH(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x7435cf922aeeb93L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/services/RunService;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x18e49c3437fc3bfL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getDebugger()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger;->sh()V

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->a8()Labcd/af;

    move-result-object v0

    invoke-virtual {v0}, Labcd/af;->Ws()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/aide/ui/AppPreferences;->dx()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 3
    :goto_26
    new-instance v1, Lcom/aide/ui/services/RunService$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/aide/ui/services/RunService$a;-><init>(Lcom/aide/ui/services/RunService;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/aide/ui/services/RunService$b;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/services/RunService$b;-><init>(Lcom/aide/ui/services/RunService;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/aide/ui/services/RunService;->Zo(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v0

    .line 4
    sget-boolean v1, Lcom/aide/ui/services/RunService;->Hw:Z

    if-eqz v1, :cond_45

    const-wide v2, -0x18e49c3437fc3bfL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method
