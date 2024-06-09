.class public Lcom/aide/ui/MainActivity;
.super Lcom/aide/ui/ThemedActionbarActivity;
.source "SourceFile"

# interfaces
.implements Lcom/aide/ui/services/ErrorService$ErrorListener;
.implements Lcom/aide/ui/AIDEEditorPager$e;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation runtime Labcd/cy;
    clazz = -0x1b7def450e608340L
    container = -0x1b7def450e608340L
    user = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/MainActivity$n;,
        Lcom/aide/ui/MainActivity$m;,
        Lcom/aide/ui/MainActivity$p;,
        Lcom/aide/ui/MainActivity$o;,
        Lcom/aide/ui/MainActivity$j;,
        Lcom/aide/ui/MainActivity$i;,
        Lcom/aide/ui/MainActivity$l;,
        Lcom/aide/ui/MainActivity$k;,
        Lcom/aide/ui/MainActivity$v;,
        Lcom/aide/ui/MainActivity$u;,
        Lcom/aide/ui/MainActivity$w;,
        Lcom/aide/ui/MainActivity$r;,
        Lcom/aide/ui/MainActivity$q;,
        Lcom/aide/ui/MainActivity$t;,
        Lcom/aide/ui/MainActivity$s;,
        Lcom/aide/ui/MainActivity$f;,
        Lcom/aide/ui/MainActivity$e;,
        Lcom/aide/ui/MainActivity$h;,
        Lcom/aide/ui/MainActivity$g;,
        Lcom/aide/ui/MainActivity$b;,
        Lcom/aide/ui/MainActivity$a;,
        Lcom/aide/ui/MainActivity$d;,
        Lcom/aide/ui/MainActivity$c;
    }
.end annotation


# static fields
.field private static synthetic oy:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field

.field private static synthetic pN:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field


# instance fields
.field private AL:Lcom/aide/ui/x;
    .annotation runtime Labcd/dy;
        field = 0x262f1b2cd176fe77L
    .end annotation
.end field

.field private Cz:J
    .annotation runtime Labcd/dy;
        field = 0x260b66f62d785495L
    .end annotation
.end field

.field private Gj:Z
    .annotation runtime Labcd/dy;
        field = -0x23b9dcbda56ca85L
    .end annotation
.end field

.field private Jl:Z
    .annotation runtime Labcd/dy;
        field = -0x5598b7b2e3c0a8L
    .end annotation
.end field

.field private Q6:I
    .annotation runtime Labcd/dy;
        field = -0x4b54320e0daa0428L
    .end annotation
.end field

.field private Z1:Z
    .annotation runtime Labcd/dy;
        field = 0x18aae418732fc88fL
    .end annotation
.end field

.field private cT:Lcom/aide/ui/m;
    .annotation runtime Labcd/dy;
        field = -0x501ea3fb548894b3L
    .end annotation
.end field

.field private e3:Landroid/os/Handler;
    .annotation runtime Labcd/dy;
        field = 0x205c9e53c551fb75L
    .end annotation
.end field

.field private eU:I
    .annotation runtime Labcd/dy;
        field = 0x3f2b0e26d1d72600L
    .end annotation
.end field

.field private fN:Landroid/view/View;
    .annotation runtime Labcd/dy;
        field = -0x150f317e49e31c20L
    .end annotation
.end field

.field private fY:Lcom/aide/common/KeyStrokeDetector;
    .annotation runtime Labcd/dy;
        field = 0x4caf1cc0c5078bf0L
    .end annotation
.end field

.field private hK:Z
    .annotation runtime Labcd/dy;
        field = -0x37e930dd525f9e80L
    .end annotation
.end field

.field private iW:Z
    .annotation runtime Labcd/dy;
        field = -0x2f0b76e40e2023e8L
    .end annotation
.end field

.field private jw:J
    .annotation runtime Labcd/dy;
        field = -0x45f036d25933a35dL
    .end annotation
.end field

.field private k2:Lcom/aide/common/ProgressDialogHandler;
    .annotation runtime Labcd/dy;
        field = -0x2189070a09c9c888L
    .end annotation
.end field

.field private kf:Z
    .annotation runtime Labcd/dy;
        field = -0x13b0bccb6a1103d4L
    .end annotation
.end field

.field private n5:Z
    .annotation runtime Labcd/dy;
        field = -0x4b44f2cc055c7420L
    .end annotation
.end field

.field private pO:Lcom/aide/ui/QuickKeysBar;
    .annotation runtime Labcd/dy;
        field = -0x1aa99f8c447cf8e0L
    .end annotation
.end field

.field private q7:Ljava/lang/Object;
    .annotation runtime Labcd/dy;
        field = -0x9bc2077646f36e1L
    .end annotation
.end field

.field private qp:Lcom/aide/common/ProgressDialogHandler;
    .annotation runtime Labcd/dy;
        field = -0x3d353b524cb44e2cL
    .end annotation
.end field

.field private sE:Lcom/aide/ui/MainActivity$w;
    .annotation runtime Labcd/dy;
        field = -0x599f17e7a5194880L
    .end annotation
.end field

.field private sg:Lcom/aide/ui/QuickActionMenu;
    .annotation runtime Labcd/dy;
        field = -0x28f8daa0bd2365cbL
    .end annotation
.end field

.field private w9:Lcom/aide/ui/l;
    .annotation runtime Labcd/dy;
        field = -0x6559822ab8e9afcL
    .end annotation
.end field

.field private zh:Lcom/aide/ui/w;
    .annotation runtime Labcd/dy;
        field = -0x231f5807849cbb48L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/MainActivity;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x767582fc299e640L
    .end annotation

    const-wide v0, 0x19daa820acd15f38L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    invoke-direct {p0}, Lcom/aide/ui/ThemedActionbarActivity;-><init>()V

    .line 2
    new-instance v3, Lcom/aide/common/ProgressDialogHandler;

    const-string v4, "Starting..."

    invoke-direct {v3, p0, v4}, Lcom/aide/common/ProgressDialogHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->qp:Lcom/aide/common/ProgressDialogHandler;

    .line 3
    new-instance v3, Lcom/aide/ui/MainActivity$k;

    const-string v4, "Analyzing..."

    invoke-direct {v3, p0, p0, v4}, Lcom/aide/ui/MainActivity$k;-><init>(Lcom/aide/ui/MainActivity;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->k2:Lcom/aide/common/ProgressDialogHandler;

    .line 4
    new-instance v3, Lcom/aide/ui/w;

    invoke-direct {v3, p0}, Lcom/aide/ui/w;-><init>(Lcom/aide/ui/MainActivity;)V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->zh:Lcom/aide/ui/w;

    .line 5
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->q7:Ljava/lang/Object;

    const/4 v3, -0x1

    .line 6
    iput v3, p0, Lcom/aide/ui/MainActivity;->Q6:I

    .line 7
    new-instance v3, Lcom/aide/ui/MainActivity$w;

    invoke-direct {v3, v2}, Lcom/aide/ui/MainActivity$w;-><init>(Lcom/aide/ui/MainActivity$k;)V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->sE:Lcom/aide/ui/MainActivity$w;
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v4, :cond_43

    invoke-static {v3, v0, v1, v2}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_43
    throw v3
.end method

.method static synthetic EQ(Lcom/aide/ui/MainActivity;)V
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x15581c6cbd653af9L
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->XL()V

    return-void
.end method

.method private Jl()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x4af368f966c6b237L
    .end annotation

    const-wide v0, -0x4bbf10fd7142b17bL  # -5.395366680151774E-57

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->cT:Lcom/aide/ui/m;

    if-eqz v2, :cond_46

    .line 2
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->cT:Lcom/aide/ui/m;

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v3

    if-nez v3, :cond_42

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/SplitView;->splitHorizontalByDefault()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v3

    if-nez v3, :cond_42

    .line 4
    :cond_2c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditorPager;->aq()Z

    move-result v3

    if-nez v3, :cond_42

    .line 5
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/common/AndroidHelper;->j3(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v3, 0x1

    goto :goto_43

    :cond_42
    const/4 v3, 0x0

    .line 6
    :goto_43
    invoke-virtual {v2, v3}, Lcom/aide/ui/m;->FH(Z)V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    :cond_46
    return-void

    :catchall_47
    move-exception v2

    .line 7
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4f
    throw v2
.end method

.method private Mr()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x8ee5e6d0045f689L
    .end annotation

    const-wide v0, -0x33eb99d75c86574fL  # -3.2011739958156E58

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/build/android/m;->j6()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2
    new-instance v2, Lcom/aide/ui/MainActivity$c;

    const-string v3, "Old NDK Version Deleter"

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/MainActivity$c;-><init>(Lcom/aide/ui/MainActivity;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 5
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public static Mz(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0xfaca3e48d8c413dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xd87790cb3c52ef3L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/aide/ui/MainActivity;

    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getLaunchActivityClass()Ljava/lang/Class;
    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "EXTRA_UPGRADE_NOTIFICATION_CLICKED"

    const/4 v5, 0x1

    .line 2
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    .line 3
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v3, v5}, Lcom/aide/ui/MainActivity;->v5(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2f

    return-object p0

    :catchall_2f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v4, :cond_37

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v3
.end method

.method public static OW(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0xb7536c4f99606c0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x4b61ce47d36a7cL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/aide/ui/MainActivity;

    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getLaunchActivityClass()Ljava/lang/Class;
    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    const/4 v5, 0x1

    .line 2
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    .line 3
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    .line 4
    invoke-static {p0, v4, v3, v5}, Lcom/aide/ui/MainActivity;->v5(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-object p0

    :catchall_27
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method private Q6()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x5bec2e1646c82efdL
    .end annotation

    const-wide v0, 0x242c3c66011cdf61L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->dx()Lcom/aide/ui/AIDEErrorsView;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 2
    invoke-virtual {v2}, Lcom/aide/ui/AIDEErrorsView;->DW()V

    const v2, 0x7f0800ed

    .line 3
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method private U2()V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x1cc29ed2b107b460L
    .end annotation

    const-string v0, "first_run_time"

    const-string v1, "first_seen_version"

    const-wide v2, 0x41c21e2ac562fccL

    :try_start_9
    sget-boolean v4, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v4, :cond_10

    invoke-static {v2, v3, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_64

    .line 1
    :cond_10
    :try_start_10
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v5, -0x1

    .line 2
    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/aide/ui/MainActivity;->Q6:I

    if-ne v6, v5, :cond_40

    const/4 v5, 0x0

    .line 3
    invoke-virtual {p0, v5}, Lcom/aide/ui/MainActivity;->x9(Z)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2e

    .line 4
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->KD()I

    move-result v5

    iput v5, p0, Lcom/aide/ui/MainActivity;->Q6:I

    const/4 v5, 0x1

    .line 5
    iput-boolean v5, p0, Lcom/aide/ui/MainActivity;->kf:Z

    goto :goto_32

    :cond_2e
    const/16 v5, 0x67

    .line 6
    iput v5, p0, Lcom/aide/ui/MainActivity;->Q6:I

    .line 7
    :goto_32
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 8
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->KD()I

    move-result v6

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_40
    const-wide/16 v5, -0x1

    .line 10
    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/aide/ui/MainActivity;->Cz:J

    cmp-long v1, v7, v5

    if-nez v1, :cond_63

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/aide/ui/MainActivity;->Cz:J

    .line 12
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 13
    iget-wide v4, p0, Lcom/aide/ui/MainActivity;->Cz:J

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5e
    .catchall {:try_start_10 .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception v0

    .line 15
    :try_start_60
    invoke-static {v0}, Lcom/aide/common/AppLog;->v5(Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    :cond_63
    :goto_63
    return-void

    :catchall_64
    move-exception v0

    .line 16
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_6c

    invoke-static {v0, v2, v3, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6c
    throw v0
.end method

.method private static synthetic VH(Ljava/lang/Object;Landroid/content/Intent;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0, p1}, Labcd/iy;->BT(Ljava/lang/Object;Landroid/content/Intent;)V

    return-void
.end method

.method private WB()V
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x67ff1b6473949f5L
    .end annotation

    const-wide v0, -0x3a54e28f118040fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "BrowserLayout"

    const/4 v3, 0x0

    .line 1
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "CurrentBrowser"

    const/4 v5, -0x1

    .line 2
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_1f

    .line 3
    invoke-direct {p0, v2, v3}, Lcom/aide/ui/MainActivity;->ye(IZ)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method private XL()V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x18b7c5ebca0e9075L
    .end annotation

    const-wide v0, -0x5c59e33240faeffL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aide/ui/AIDEEditor;

    .line 5
    invoke-virtual {v6}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {v6}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/aide/ui/services/OpenFileService;->getOpenFileModel(Ljava/lang/String;)Lcom/aide/ui/services/OpenFileService$OpenFileModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/aide/ui/services/OpenFileService$OpenFileModel;->sG()Z

    move-result v6

    if-eqz v6, :cond_55

    .line 8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " *"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 9
    :cond_55
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_5c

    const/4 v6, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v6, 0x0

    .line 10
    :goto_5d
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 11
    :cond_65
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v5

    const-string v6, "Close Files"

    new-instance v7, Lcom/aide/ui/MainActivity$m;

    invoke-direct {v7, p0, v2}, Lcom/aide/ui/MainActivity$m;-><init>(Lcom/aide/ui/MainActivity;Ljava/util/List;)V

    invoke-static {v5, v6, v3, v4, v7}, Lcom/aide/common/MessageBox;->we(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/aide/common/ValueRunnable;)V
    :try_end_73
    .catchall {:try_start_5 .. :try_end_73} :catchall_74

    return-void

    :catchall_74
    move-exception v2

    .line 12
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_7c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7c
    goto :goto_7e

    :goto_7d
    throw v2

    :goto_7e
    goto :goto_7d
.end method

.method private static synthetic Zo(Ljava/lang/Object;Landroid/content/Intent;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0, p1}, Labcd/iy;->BT(Ljava/lang/Object;Landroid/content/Intent;)V

    return-void
.end method

.method public static aj(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x27923b6914ce1f40L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x178781325bff8940L  # -1.7881354754224034E195

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/aide/ui/MainActivity;

    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getLaunchActivityClass()Ljava/lang/Class;
    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    const/4 v5, 0x1

    .line 2
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    .line 3
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    .line 4
    invoke-static {p0, v4, v3, v5}, Lcom/aide/ui/MainActivity;->v5(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-object p0

    :catchall_27
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method private dx()Lcom/aide/ui/AIDEErrorsView;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x3a38f4fb25791930L
    .end annotation

    const-wide v0, 0x331231339dd2e8c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800f9

    .line 1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/AIDEErrorsView;

    if-eqz v2, :cond_18

    return-object v2

    :cond_18
    const v2, 0x7f0800a1

    .line 2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/aide/ui/AIDEErrorsView;

    if-eqz v3, :cond_2c

    .line 5
    check-cast v2, Lcom/aide/ui/AIDEErrorsView;
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2e

    return-object v2

    :cond_2c
    const/4 v0, 0x0

    return-object v0

    :catchall_2e
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method private ei()Landroid/widget/Spinner;
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x13597a089bea8ffL
    .end annotation

    const-wide v0, -0x7a36c90629277f9bL  # -8.681778798525072E-281

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_4b

    :cond_c
    const/4 v2, 0x0

    .line 1
    :try_start_d
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mTabScrollView"

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_34

    return-object v2

    .line 7
    :cond_34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "mTabSpinner"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 10
    check-cast v3, Landroid/widget/Spinner;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_49} :catch_4a
    .catchall {:try_start_d .. :try_end_49} :catchall_4b

    return-object v3

    :catch_4a
    :cond_4a
    return-object v2

    :catchall_4b
    move-exception v2

    .line 11
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_53

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_53
    throw v2
.end method

.method private er(Z)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x62c2b555f03a4c34L
    .end annotation

    const-wide v0, 0x57e1b78c858f3700L  # 2.1815152145057572E115

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->Ws(JLjava/lang/Object;Z)V

    .line 1
    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/MainActivity;->hK:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public static fN(Landroid/content/Context;)V
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0xfe619cad5a8daa0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x85882c151335800L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->vJ()Z

    move-result v3
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_82

    const/4 v4, 0x1

    const-string v5, "EXTRA_NAVIGATE_BREAKPOINT"

    if-eqz v3, :cond_29

    .line 2
    :try_start_16
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/aide/ui/MainActivity;

    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getLaunchActivityClass()Ljava/lang/Class;
    move-result-object v6

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x14000000

    .line 3
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-static {p0, v3}, Lcom/aide/ui/MainActivity;->VH(Ljava/lang/Object;Landroid/content/Intent;)V

    goto :goto_81

    .line 6
    :cond_29
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->jJ()Z

    move-result v3

    if-nez v3, :cond_46

    .line 7
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/aide/ui/MainActivity;

    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getLaunchActivityClass()Ljava/lang/Class;
    move-result-object v6

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x30000000

    .line 8
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    invoke-static {p0, v3}, Lcom/aide/ui/MainActivity;->VH(Ljava/lang/Object;Landroid/content/Intent;)V

    goto :goto_81

    .line 11
    :cond_46
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->q7()V

    .line 12
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getDebugger()Lcom/aide/ui/debugger/Debugger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/debugger/Debugger;->EQ()Lcom/aide/ui/util/FileSpan;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aide/ui/MainActivity;->aq(Lcom/aide/ui/util/FileSpan;)V

    .line 13
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/browsers/DebugBrowser;->Hw()V

    .line 14
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 15
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/aide/ui/MainActivity$o;

    invoke-direct {v4, p0}, Lcom/aide/ui/MainActivity$o;-><init>(Landroid/content/Context;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_81
    .catchall {:try_start_16 .. :try_end_81} :catchall_82

    :goto_81
    return-void

    :catchall_82
    move-exception v3

    .line 16
    sget-boolean v4, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v4, :cond_8a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8a
    throw v3
.end method

.method private gW()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x563bbf7755174e3L
    .end annotation

    const-wide v0, -0x2913843006de88dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getFileBrowserService()Lcom/aide/ui/services/FileBrowserService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/FileBrowserService;->DW()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".nomedia"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getFileBrowserService()Lcom/aide/ui/services/FileBrowserService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/FileBrowserService;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/util/FileSystem;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 3
    invoke-static {v2}, Lcom/aide/ui/util/FileSystem;->exists(Ljava/lang/String;)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_3c

    if-nez v3, :cond_3b

    .line 4
    :try_start_33
    invoke-static {v2}, Lcom/aide/ui/util/FileSystem;->Hw(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37
    .catchall {:try_start_33 .. :try_end_36} :catchall_3c

    goto :goto_3b

    :catch_37
    move-exception v2

    .line 5
    :try_start_38
    invoke-static {v2}, Lcom/aide/common/AppLog;->v5(Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    :cond_3b
    :goto_3b
    return-void

    :catchall_3c
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method private static synthetic gn(Ljava/lang/Object;Landroid/content/Intent;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Lcom/aide/ui/MainActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0, p1}, Labcd/iy;->BT(Ljava/lang/Object;Landroid/content/Intent;)V

    return-void
.end method

.method private iW()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x487852a29d8cf3e0L
    .end annotation

    const-wide v0, 0x12ae23a8d6887398L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->pO:Lcom/aide/ui/QuickKeysBar;

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditorPager;->getQuickKeys()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/QuickKeysBar;->gn(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public static jO(Landroid/app/Activity;Landroid/content/IntentSender;)V
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x9453d98d5196125L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x9573e08361b779fL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/MainActivity;

    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getLaunchActivityClass()Ljava/lang/Class;
    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_NAVIGATE_PLAY_STORE_INTENT_SENDER"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {p0, v0}, Lcom/aide/ui/MainActivity;->Zo(Ljava/lang/Object;Landroid/content/Intent;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    .line 5
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_33

    const-wide v2, 0x9573e08361b779fL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method private jw()V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x4c217cd249198028L
    .end annotation

    const-wide v0, 0x633309f70421274L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getDebugger()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/debugger/Debugger;->EQ()Lcom/aide/ui/util/FileSpan;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->aq(Lcom/aide/ui/util/FileSpan;)V

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/DebugBrowser;->Hw()V

    .line 3
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/aide/ui/MainActivity$i;

    invoke-direct {v3, p0}, Lcom/aide/ui/MainActivity$i;-><init>(Lcom/aide/ui/MainActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public static lp(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x88181d70dbc2f8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2d481964f56565a0L  # -3.042924754501736E90

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/aide/ui/MainActivity;

    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getLaunchActivityClass()Ljava/lang/Class;
    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "EXTRA_SHOWN_FROM_TRAINER_NOTIFICATION"

    const/4 v5, 0x1

    .line 2
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    .line 3
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    .line 4
    invoke-static {p0, v4, v3, v5}, Lcom/aide/ui/MainActivity;->v5(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-object p0

    :catchall_27
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method private n5()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0xce758f84f8a7957L
    .end annotation

    const-wide v0, 0x2072d91fe452d15L  # 6.92198159481766E-299

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800f2

    .line 1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/AIDEAnalysisProgressBar;

    .line 2
    invoke-virtual {v2}, Lcom/aide/ui/AIDEAnalysisProgressBar;->DW()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method private static nw(Landroid/content/Context;)I
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x483ece76ae267044L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x41b91fc9b3f59620L  # -1.0652387750794635E-8

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    .line 1
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget p0, v3, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1c} :catch_1d
    .catchall {:try_start_d .. :try_end_1c} :catchall_21

    return p0

    :catch_1d
    const p0, 0x7f070078

    return p0

    :catchall_21
    move-exception v3

    .line 2
    sget-boolean v4, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method private pN()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1522c69788f0fd74L
    .end annotation

    const-wide v0, -0x34bf05a9f3c5ab08L  # -3.252314809209223E54

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mf;->Mz()Z

    move-result v2

    if-nez v2, :cond_22

    :cond_1c
    invoke-static {}, Lcom/aide/ui/AppPreferences;->Qq()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_26

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method private sE(I)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x4e7328a9df9d3cffL
    .end annotation

    const-wide v0, -0x47969ecd659b23e9L  # -5.96673371510864E-37

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    :cond_c
    const-string v2, "BrowserLayout"

    const/4 v3, 0x0

    .line 1
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "CurrentBrowser"

    .line 3
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_2d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method private sg(Landroid/view/Menu;)V
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x3404d1faeac569f5L
    .end annotation

    const-wide v0, 0x11a1402a614d1adL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_e
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v3, v4, :cond_6e

    .line 2
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 3
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Lcom/aide/ui/AppCommands;->u7(I)Lcom/aide/ui/command/MenuItemCommand;

    move-result-object v5

    if-eqz v5, :cond_46

    .line 4
    invoke-interface {v5}, Lcom/aide/ui/command/MenuItemCommand;->isEnabled()Z

    move-result v6

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 5
    instance-of v6, v5, Lcom/aide/ui/command/MenuCommand;

    if-eqz v6, :cond_37

    .line 6
    move-object v6, v5

    check-cast v6, Lcom/aide/ui/command/MenuCommand;

    invoke-interface {v6, v2}, Lcom/aide/ui/command/MenuCommand;->isVisible(Z)Z

    move-result v6

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7
    :cond_37
    instance-of v6, v5, Labcd/eg;

    if-eqz v6, :cond_46

    .line 8
    check-cast v5, Labcd/eg;

    invoke-interface {v5}, Labcd/eg;->j6()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_46

    .line 9
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 10
    :cond_46
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Lcom/aide/ui/AppCommands;->DW(I)Labcd/rf;

    move-result-object v5

    if-eqz v5, :cond_5e

    .line 11
    invoke-interface {v5}, Labcd/rf;->isVisible()Z

    move-result v6

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 12
    invoke-interface {v5}, Labcd/rf;->isEnabled()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 13
    :cond_5e
    invoke-interface {v4}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 14
    invoke-interface {v4}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/aide/ui/MainActivity;->sg(Landroid/view/Menu;)V
    :try_end_6b
    .catchall {:try_start_5 .. :try_end_6b} :catchall_6f

    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_6e
    return-void

    :catchall_6f
    move-exception v2

    .line 15
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_77

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    goto :goto_79

    :goto_78
    throw v2

    :goto_79
    goto :goto_78
.end method

.method public static sy(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x1985c9feb592eee5L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2bba94772bddb3abL  # -9.15059263676553E97

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/aide/ui/MainActivity;

    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getLaunchActivityClass()Ljava/lang/Class;
    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "EXTRA_SHOWN_FROM_NOTIFICATION"

    const/4 v5, 0x1

    .line 2
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    .line 3
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    .line 4
    invoke-static {p0, v4, v3, v5}, Lcom/aide/ui/MainActivity;->v5(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-object p0

    :catchall_27
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method static synthetic tp(Lcom/aide/ui/MainActivity;I)V
    .registers 2
    .annotation runtime Labcd/ey;
        method = 0x152ee5fd2cc29d8dL
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->sE(I)V

    return-void
.end method

.method static synthetic u7(Lcom/aide/ui/MainActivity;)Lcom/aide/common/ProgressDialogHandler;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x17f40ba50eec1731L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/MainActivity;->qp:Lcom/aide/common/ProgressDialogHandler;

    return-object p0
.end method

.method private static synthetic v5(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Labcd/iy;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic we(Lcom/aide/ui/MainActivity;)Ljava/lang/Object;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x657fbfc6c106300L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/MainActivity;->q7:Ljava/lang/Object;

    return-object p0
.end method

.method private ye(IZ)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x26077c9782f74334L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v0, :cond_16

    const-wide v0, 0x206ef24b349ee760L

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, p0, v2, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->SI()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_29

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    invoke-virtual {v0, p1, v2}, Lcom/aide/ui/browsers/BrowserPager;->lp(IZ)V

    .line 2
    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->sE(I)V

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/aide/ui/views/SplitView;->openSplit(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 5
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->DW()Labcd/l8;

    move-result-object v0

    invoke-virtual {v0, v1}, Labcd/l8;->u7(Z)V
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_4a

    return-void

    :catchall_4a
    move-exception v0

    .line 6
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_63

    const-wide v2, 0x206ef24b349ee760L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method


# virtual methods
.method public AL()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x166829f396df58c0L
    .end annotation

    const-wide v0, -0x2fb3ca10d7298b88L  # -6.533147275839593E78

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->Eq()V

    .line 2
    sget v2, Lcom/aide/ui/browsers/BrowserPager;->Yi:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/MainActivity;->ye(IZ)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public BT()V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x231402409264b27fL
    .end annotation

    const-wide v0, -0xb83767416fa31cbL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/OpenFileService;->U2()Z

    move-result v2

    if-eqz v2, :cond_2a

    const v2, 0x7f0d05e7

    const v3, 0x7f0d05e6

    .line 2
    new-instance v4, Lcom/aide/ui/MainActivity$e;

    invoke-direct {v4, p0}, Lcom/aide/ui/MainActivity$e;-><init>(Lcom/aide/ui/MainActivity;)V

    new-instance v5, Lcom/aide/ui/MainActivity$f;

    invoke-direct {v5, p0}, Lcom/aide/ui/MainActivity$f;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static {p0, v2, v3, v4, v5}, Lcom/aide/common/MessageBox;->a8(Landroid/app/Activity;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_2d

    .line 3
    :cond_2a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    :goto_2d
    return-void

    :catchall_2e
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method public CU()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2681846156cf823L
    .end annotation

    const-wide v0, 0x2c1b911d62e5314fL  # 3.2264772896451455E-96

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->AL:Lcom/aide/ui/x;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/aide/ui/MainActivity;->AL:Lcom/aide/ui/x;

    invoke-virtual {v2}, Lcom/aide/ui/x;->j6()Z

    move-result v2

    if-nez v2, :cond_24

    :cond_18
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->w9:Lcom/aide/ui/l;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/aide/ui/MainActivity;->w9:Lcom/aide/ui/l;

    .line 2
    invoke-virtual {v2}, Lcom/aide/ui/l;->DW()Z

    move-result v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_28

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    :catchall_28
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public Cz()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x48f370f112e81a79L
    .end annotation

    const-wide v0, 0xb0b6406fae31a9fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Labcd/kd;

    invoke-direct {v2}, Labcd/kd;-><init>()V

    invoke-static {p0, v2}, Lcom/aide/common/MessageBox;->gW(Landroid/app/Activity;Lcom/aide/common/MessageBox;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public DW()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x39d37677097b23c0L
    .end annotation

    const-wide v0, 0x2845d3565ddfc820L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->n5()V

    .line 2
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->Q6()V

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cb()Lcom/aide/ui/browsers/ErrorBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/ErrorBrowser;->Zo()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public Eq()Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1f60fed630baca40L
    .end annotation

    const-wide v0, -0xf8d700c145b1350L  # -4.610932948817873E233

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/NavigateService;->j6()Lcom/aide/ui/util/FileSpan;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/aide/ui/services/NavigateService;->u7(Z)V

    .line 3
    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->aq(Lcom/aide/ui/util/FileSpan;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_24

    const/4 v0, 0x1

    return v0

    :cond_23
    return v3

    :catchall_24
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public Ev(I)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x2a509f95afc02ac1L
    .end annotation

    const-wide v0, 0x3c7f8b00771fc7dbL  # 2.7359170354887765E-17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->aM()V

    .line 2
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->iW()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-ltz p1, :cond_34

    .line 4
    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v3

    if-ge p1, v3, :cond_34

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v3

    if-eq p1, v3, :cond_34

    .line 5
    invoke-virtual {v2, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 6
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->ei()Landroid/widget/Spinner;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 7
    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_35

    :cond_34
    return-void

    :catchall_35
    move-exception v2

    .line 8
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_42

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v2
.end method

.method public FH(Z)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x13de8ecc60815738L
    .end annotation

    const-wide v0, -0x3736124f46af900L  # -8.92531362267445E291

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->Ws(JLjava/lang/Object;Z)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->DW()Labcd/l8;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p1, :cond_15

    const/4 v4, 0x1

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    :goto_16
    invoke-virtual {v2, v4}, Labcd/l8;->u7(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->q7()V

    if-eqz p1, :cond_3f

    .line 3
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->Zo(Landroid/content/Context;)F

    move-result v2

    const/high16 v4, 0x44480000  # 800.0f

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_32

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 4
    :cond_32
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->Zo(Landroid/content/Context;)F

    move-result v2

    const/high16 v4, 0x44070000  # 540.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3f

    .line 5
    :cond_3c
    invoke-virtual {p0, v3}, Lcom/aide/ui/MainActivity;->Ws(Z)V
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_40

    :cond_3f
    return-void

    :catchall_40
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_4d

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v2
.end method

.method public FN(Lcom/aide/ui/util/FileSpan;Z)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x11f23948ff36db6fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v0, :cond_11

    const-wide v0, -0x1d73a42a30ef705bL  # -5.225819629764688E166

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, p0, p1, v2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    if-eqz p1, :cond_c0

    .line 1
    iget-object v0, p1, Lcom/aide/ui/util/FileSpan;->j6:Ljava/lang/String;

    invoke-static {v0}, Lcom/aide/ui/util/FileSystem;->KD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 2
    iget-object v0, p1, Lcom/aide/ui/util/FileSpan;->j6:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/services/OpenFileService;->u7()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4c

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    iget v2, p1, Lcom/aide/ui/util/FileSpan;->DW:I

    iget v3, p1, Lcom/aide/ui/util/FileSpan;->FH:I

    iget v4, p1, Lcom/aide/ui/util/FileSpan;->Hw:I

    iget v5, p1, Lcom/aide/ui/util/FileSpan;->v5:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/aide/ui/AIDEEditorPager;->w9(IIII)V

    if-eqz p2, :cond_44

    .line 4
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->jJ()V

    .line 5
    :cond_44
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aide/ui/services/NavigateService;->u7(Z)V

    goto :goto_c0

    .line 6
    :cond_4c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/services/NavigateService;->Zo()Z

    move-result v0

    .line 7
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/services/NavigateService;->u7(Z)V
    :try_end_5c
    .catchall {:try_start_0 .. :try_end_5c} :catchall_c1

    .line 8
    :try_start_5c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v2

    iget-object v3, p1, Lcom/aide/ui/util/FileSpan;->j6:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/aide/ui/services/OpenFileService;->lg(Ljava/lang/String;Z)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_65} :catch_8e
    .catchall {:try_start_5c .. :try_end_65} :catchall_8c

    if-eqz v0, :cond_6e

    .line 9
    :try_start_67
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aide/ui/services/NavigateService;->u7(Z)V

    .line 10
    :cond_6e
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    iget v2, p1, Lcom/aide/ui/util/FileSpan;->DW:I

    iget v3, p1, Lcom/aide/ui/util/FileSpan;->FH:I

    iget v4, p1, Lcom/aide/ui/util/FileSpan;->Hw:I

    iget v5, p1, Lcom/aide/ui/util/FileSpan;->v5:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/aide/ui/AIDEEditorPager;->w9(IIII)V

    .line 11
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->XG()V

    .line 12
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aide/ui/services/NavigateService;->u7(Z)V
    :try_end_8b
    .catchall {:try_start_67 .. :try_end_8b} :catchall_c1

    goto :goto_c0

    :catchall_8c
    move-exception v2

    goto :goto_b6

    .line 13
    :catch_8e
    :try_start_8e
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/aide/ui/util/FileSpan;->j6:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could not be loaded!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_ac
    .catchall {:try_start_8e .. :try_end_ac} :catchall_8c

    if-eqz v0, :cond_b5

    .line 14
    :try_start_ae
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aide/ui/services/NavigateService;->u7(Z)V

    :cond_b5
    return-void

    :goto_b6
    if-eqz v0, :cond_bf

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aide/ui/services/NavigateService;->u7(Z)V

    .line 15
    :cond_bf
    throw v2
    :try_end_c0
    .catchall {:try_start_ae .. :try_end_c0} :catchall_c1

    :cond_c0
    :goto_c0
    return-void

    :catchall_c1
    move-exception v0

    .line 16
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_d6

    const-wide v2, -0x1d73a42a30ef705bL  # -5.225819629764688E166

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d6
    throw v0
.end method

.method public Gj()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x77359820345b15cL
    .end annotation

    const-wide v0, 0x1c4218e32a33f60L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->qp:Lcom/aide/common/ProgressDialogHandler;

    invoke-virtual {v2}, Lcom/aide/common/ProgressDialogHandler;->Hw()V

    goto :goto_20

    .line 3
    :cond_18
    new-instance v2, Labcd/dd;

    invoke-direct {v2}, Labcd/dd;-><init>()V

    invoke-static {p0, v2}, Lcom/aide/common/MessageBox;->gW(Landroid/app/Activity;Lcom/aide/common/MessageBox;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :goto_20
    return-void

    :catchall_21
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x5e618212795f480L
    .end annotation

    const-wide v0, 0x94e1fab65387428L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->n5()V

    .line 2
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->Q6()V

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cb()Lcom/aide/ui/browsers/ErrorBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/ErrorBrowser;->VH()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public I()Landroid/view/View;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x1775cf89fcfb6750L
    .end annotation

    const-wide v0, -0x1e572d6203a2b020L  # -2.791882292413606E162

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->fN:Landroid/view/View;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public IS(I)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x11ec093e6b31f1dL
    .end annotation

    const-wide v0, -0x3631e1c74fdf31dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-static {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->DW(Landroid/app/Activity;I)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public J0(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x255424606373580L
    .end annotation

    const-wide v0, -0x556ea419dad4d8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 3
    new-instance v4, Lcom/aide/ui/MainActivity$d;

    invoke-direct {v4, p0, v3, p1}, Lcom/aide/ui/MainActivity$d;-><init>(Lcom/aide/ui/MainActivity;Landroid/app/ActionBar$Tab;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->setHasEmbeddedTabs()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method public J8(I)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x36e77e5ae4261769L
    .end annotation

    const-wide v0, -0x3e1ea0f0bd5139b1L  # -2.3315399894617076E9

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->sE(I)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public KD()I
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x125021dc904008L
    .end annotation

    const-wide v0, -0x4c64b29615df9c00L  # -4.2475809001195757E-60

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_21

    :cond_c
    const/4 v2, 0x0

    .line 1
    :try_start_d
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1b} :catch_1c
    .catchall {:try_start_d .. :try_end_1b} :catchall_21

    return v0

    :catch_1c
    move-exception v3

    .line 2
    :try_start_1d
    invoke-static {v3}, Lcom/aide/common/AppLog;->v5(Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    return v2

    :catchall_21
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public Nh()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0xbf5354091cc6574L
    .end annotation

    const-wide v0, 0x2139dd63d66a9be0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Lcom/aide/ui/MainActivity$h;

    invoke-direct {v2, p0}, Lcom/aide/ui/MainActivity$h;-><init>(Lcom/aide/ui/MainActivity;)V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aide/ui/views/SplitView;->toggleSplit(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 4
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->Eq()V

    .line 5
    :cond_29
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 6
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->DW()Labcd/l8;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Labcd/l8;->u7(Z)V
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    :cond_3b
    return-void

    :catchall_3c
    move-exception v2

    .line 7
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method public P8()F
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x357dc817bcd7e948L
    .end annotation

    const-wide v0, 0x4f36ad9de4988c4cL  # 4.006889432870309E73

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->lg(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 2
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->dx()Lcom/aide/ui/AIDEErrorsView;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 3
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000  # 10.0f

    mul-float v0, v0, v1

    sub-float/2addr v2, v0

    return v2

    .line 5
    :cond_33
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->u7(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x43960000  # 300.0f

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_47

    mul-float v2, v2, v0

    return v2

    :catchall_47
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4f
    throw v2
.end method

.method public QO(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 11
    .annotation runtime Labcd/ey;
        method = 0x1f12415557fa8317L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xbe26b4889ebf355L  # 2.00983988161895E-251

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iput-object p1, p0, Lcom/aide/ui/MainActivity;->fN:Landroid/view/View;

    const v0, 0x7f08011f

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->getLocationOnScreen([I)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    .line 5
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p2, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    aget v6, v1, v6

    sub-int/2addr v5, v6

    iget v6, p2, Landroid/graphics/Rect;->top:I

    const/4 v7, 0x1

    aget v1, v1, v7

    sub-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, p1, v2}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3d

    return-void

    :catchall_3d
    move-exception v0

    .line 6
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_4e

    const-wide v2, 0xbe26b4889ebf355L  # 2.00983988161895E-251

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v0
.end method

.method public QX()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x389691c549d91b7dL
    .end annotation

    const-wide v0, 0x439688c6123bfd45L  # 4.059413618213072E17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->SI()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/BrowserPager;->getCurrentBrowser()I

    move-result v2

    sget v3, Lcom/aide/ui/browsers/BrowserPager;->dW:I

    if-ne v2, v3, :cond_20

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/SplitView;->closeSplit(Z)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :cond_20
    return-void

    :catchall_21
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public Qq()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x33efc4ccc0932600L
    .end annotation

    const-wide v0, 0x27de5064d100b620L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->pO:Lcom/aide/ui/QuickKeysBar;

    invoke-virtual {v2}, Lcom/aide/ui/QuickKeysBar;->v5()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public SI()Lcom/aide/ui/browsers/BrowserPager;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x3bcc38439bcb1659L
    .end annotation

    const-wide v0, -0x1d49a17555aba0d1L  # -3.297691811334727E167

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800ef

    .line 1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/browsers/BrowserPager;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Sf()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x4e28b1547fe2a21bL
    .end annotation

    const-wide v0, -0x44eec034ddd0131L  # -6.501218731161185E287

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget v0, p0, Lcom/aide/ui/MainActivity;->Q6:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Ws(Z)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x3b14a3057c54d20dL
    .end annotation

    const-wide v0, 0x5d088e50fbd5275L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->Ws(JLjava/lang/Object;Z)V

    :cond_c
    const/4 v2, -0x1

    .line 1
    invoke-direct {p0, v2}, Lcom/aide/ui/MainActivity;->sE(I)V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/MainActivity$g;

    invoke-direct {v3, p0}, Lcom/aide/ui/MainActivity$g;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v2, p1, v3}, Lcom/aide/ui/views/SplitView;->closeSplit(ZLjava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->jJ()V
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    :cond_2d
    return-void

    :catchall_2e
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_3b

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method public XG()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x191a4bc6890dae30L
    .end annotation

    const-wide v0, 0xd3942eb79b2c830L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->Jl:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Xa()Z
    .registers 14
    .annotation runtime Labcd/ey;
        method = -0xc4f2e1d903f56a8L
    .end annotation

    const-string v0, "ValuableApps"

    const-wide v1, -0xc4eb6c02c15080L

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_e
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->isOpenProject()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_85

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->x9()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 3
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/aide/ui/project/AndroidProjectSupport;->getProjectPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, ""

    .line 5
    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    new-instance v7, Ljava/util/HashSet;

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_85

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5f

    const/16 v6, 0xa

    .line 10
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    :cond_5f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v6, "Do you want to get more exposure for your app?"

    const-string v7, "If you have built something great using AIDE please write about it in our community."

    const/4 v8, 0x1

    const-string v9, "Open Google+"

    .line 15
    new-instance v10, Lcom/aide/ui/MainActivity$p;

    invoke-direct {v10, p0}, Lcom/aide/ui/MainActivity$p;-><init>(Lcom/aide/ui/MainActivity;)V

    const-string v11, "Not now"

    const/4 v12, 0x0

    move-object v5, p0

    .line 16
    invoke-static/range {v5 .. v12}, Lcom/aide/common/MessageBox;->KD(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_83
    .catchall {:try_start_7 .. :try_end_83} :catchall_86

    const/4 v0, 0x1

    return v0

    :cond_85
    return v4

    :catchall_86
    move-exception v0

    .line 17
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_8e

    invoke-static {v0, v1, v2, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8e
    throw v0
.end method

.method public Z1()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x26ad9a502cd7b95L
    .end annotation

    const-wide v0, -0xe732820e61aa859L  # -9.39097626847189E238

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->kf()V

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->wc()V

    .line 3
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getFileBrowserService()Lcom/aide/ui/services/FileBrowserService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/FileBrowserService;->v5()V

    .line 4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getEngineService()Lcom/aide/ui/services/EngineService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/EngineService;->yO()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public a5(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x19f5b37485ebe877L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x19f218c8ad381095L  # -3.970679802334919E183

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->Eq()V

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string v1, "Starting App..."

    new-instance v2, Lcom/aide/ui/MainActivity$n;

    invoke-direct {v2, p0}, Lcom/aide/ui/MainActivity$n;-><init>(Lcom/aide/ui/MainActivity;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/aide/ui/ServiceContainer;->sy(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->J8()Lcom/aide/ui/services/RunService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/ui/services/RunService;->VH(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    .line 4
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_3b

    const-wide v2, -0x19f218c8ad381095L  # -3.970679802334919E183

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public a8()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x11bc3653d81b659cL
    .end annotation

    const-wide v0, 0x43923fd25f02e288L  # 3.2875023043190016E17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->et()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v2}, Lcom/aide/ui/MainActivity;->er(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->et()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/AIDEEditorPager;->setIdentifierClickingEnabled(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->q7()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    :cond_24
    return-void

    :catchall_25
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public aM()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0xfe1001f1111f294L
    .end annotation

    const-wide v0, 0x2470f0f1b370550L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    .line 1
    iput-object v2, p0, Lcom/aide/ui/MainActivity;->fN:Landroid/view/View;

    const v2, 0x7f08011f

    .line 2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsoluteLayout;

    .line 3
    invoke-virtual {v2}, Landroid/widget/AbsoluteLayout;->removeAllViews()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public aX()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x8d70e6b7b9cd849L
    .end annotation

    const-wide v0, 0x154d16a377f61233L  # 4.530157357810249E-206

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Labcd/od;

    invoke-direct {v2}, Labcd/od;-><init>()V

    invoke-static {p0, v2}, Lcom/aide/common/MessageBox;->gW(Landroid/app/Activity;Lcom/aide/common/MessageBox;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public aq(Lcom/aide/ui/util/FileSpan;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x2e06cd6618ccfa60L
    .end annotation

    const-wide v0, -0x1eccd28ff19947e0L  # -1.6851148285533243E160

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    .line 1
    invoke-virtual {p0, p1, v2}, Lcom/aide/ui/MainActivity;->FN(Lcom/aide/ui/util/FileSpan;Z)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public br()Lcom/aide/ui/views/SplitView;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x17c5e69caa1a0d7fL
    .end annotation

    const-wide v0, -0x1681c404d7f188d7L  # -1.4464288382506605E200

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f080124

    .line 1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/SplitView;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public cT()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x3f92f7dac0e65f18L
    .end annotation

    const-wide v0, -0xa25cd95b530dc8cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->yO()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->zh:Lcom/aide/ui/w;

    invoke-virtual {v2}, Lcom/aide/ui/w;->tp()V

    goto :goto_1d

    .line 3
    :cond_18
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->AL:Lcom/aide/ui/x;

    invoke-virtual {v2}, Lcom/aide/ui/x;->FH()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :goto_1d
    return-void

    :catchall_1e
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public ca(Landroid/graphics/Rect;)Landroid/view/View;
    .registers 13
    .annotation runtime Labcd/ey;
        method = 0xeb80b8de9be8e30L
    .end annotation

    const-wide v0, 0x250bbe82e7fe089cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    .line 1
    iput-object v2, p0, Lcom/aide/ui/MainActivity;->fN:Landroid/view/View;

    const v2, 0x7f08011f

    .line 2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsoluteLayout;

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 3
    invoke-virtual {v2, v3}, Landroid/widget/AbsoluteLayout;->getLocationOnScreen([I)V

    .line 4
    invoke-virtual {v2}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    .line 5
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p1, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x0

    aget v9, v3, v9

    sub-int/2addr v8, v9

    iget v9, p1, Landroid/graphics/Rect;->top:I

    const/4 v10, 0x1

    aget v3, v3, v10

    sub-int/2addr v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_43

    return-object v4

    :catchall_43
    move-exception v2

    .line 7
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v2
.end method

.method public cb()Lcom/aide/ui/browsers/ErrorBrowser;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x29bc80dae31216cL
    .end annotation

    const-wide v0, -0x24cb7ab2eddeec40L  # -2.275885724574377E131

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->SI()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/BrowserPager;->getErrorBrowser()Lcom/aide/ui/browsers/ErrorBrowser;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public checkSelfPermission(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x2cba1093f77f7518L
    .end annotation

    const-wide v0, -0x2d52c7fb678a8d40L  # -1.8599933679809598E90

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public cn()Lcom/aide/ui/browsers/DebugBrowser;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x17f68f934518cfbL
    .end annotation

    const-wide v0, -0x7aaba873c81e81bbL  # -5.471890250945286E-283

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->SI()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/BrowserPager;->getDebugBrowser()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public e3()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x47475676eeed438fL
    .end annotation

    const-wide v0, 0x39d3091638c9190dL  # 3.7540895189522355E-30

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v3

    invoke-virtual {v3}, Labcd/mf;->j3()Lcom/aide/ui/trainer/c$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/c$d;->Hw()I

    move-result v3

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v4

    .line 2
    invoke-virtual {v4}, Labcd/mf;->j3()Lcom/aide/ui/trainer/c$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/c$d;->XL()[Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v2, v3, v4}, Lcom/aide/common/TrainerLogo;->j6(Landroid/app/ActionBar;I[Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mf;->Mz()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_46

    .line 6
    :cond_3e
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    :goto_46
    return-void

    :catchall_47
    move-exception v2

    .line 7
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4f
    throw v2
.end method

.method public e9()V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x51701bc9c21c4004L
    .end annotation

    const-wide v0, 0x65cb047128a7ef0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v2

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/AIDEEditor;

    .line 4
    invoke-virtual {v4}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/aide/ui/services/OpenFileService;->getOpenFileModel(Ljava/lang/String;)Lcom/aide/ui/services/OpenFileService$OpenFileModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/aide/ui/services/OpenFileService$OpenFileModel;->sG()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " *"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8
    :cond_50
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 9
    :cond_54
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "Open Files"

    const-string v6, "Close Files..."

    new-instance v7, Lcom/aide/ui/MainActivity$j;

    invoke-direct {v7, p0, v2}, Lcom/aide/ui/MainActivity$j;-><init>(Lcom/aide/ui/MainActivity;Ljava/util/List;)V

    new-instance v8, Lcom/aide/ui/MainActivity$l;

    invoke-direct {v8, p0}, Lcom/aide/ui/MainActivity$l;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static/range {v3 .. v8}, Lcom/aide/common/MessageBox;->tp(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ValueRunnable;Ljava/lang/Runnable;)V
    :try_end_69
    .catchall {:try_start_5 .. :try_end_69} :catchall_6a

    return-void

    :catchall_6a
    move-exception v2

    .line 10
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_72

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_72
    goto :goto_74

    :goto_73
    throw v2

    :goto_74
    goto :goto_73
.end method

.method public eU()V
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x3825e356a9526051L
    .end annotation

    const-wide v0, 0x4e4a255e65887891L  # 1.4097880013042698E69

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->pN()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 4
    :goto_1f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5e

    .line 5
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v5}, Lcom/aide/ui/AIDEEditor;->getModel()Lcom/aide/ui/services/OpenFileService$OpenFileModel;

    move-result-object v5

    .line 6
    invoke-interface {v5}, Lcom/aide/ui/services/OpenFileService$OpenFileModel;->g3()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v7

    if-nez v7, :cond_54

    invoke-interface {v5}, Lcom/aide/ui/services/OpenFileService$OpenFileModel;->sG()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " *"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9
    :cond_54
    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    .line 10
    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_5f

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_5e
    return-void

    :catchall_5f
    move-exception v2

    .line 11
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_67

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_67
    goto :goto_69

    :goto_68
    throw v2

    :goto_69
    goto :goto_68
.end method

.method public ef()J
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2d8301111bcaece8L
    .end annotation

    const-wide v0, -0x50ffbfba4205d240L  # -2.676905240209574E-82

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-wide v0, p0, Lcom/aide/ui/MainActivity;->Cz:J
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-wide v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public et()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x44ba7e21c8faa129L
    .end annotation

    const-wide v0, 0xfd10d348fcf7abbL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->hK:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public fY()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x501e1116eb3a6c00L
    .end annotation

    const-wide v0, 0x19b993a819e608b8L  # 9.405212294515476E-185

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->Eq()V

    .line 2
    sget v2, Lcom/aide/ui/browsers/BrowserPager;->PH:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/MainActivity;->ye(IZ)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public g3()Lcom/aide/ui/browsers/LogCatBrowser;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x3358b50cf3123964L
    .end annotation

    const-wide v0, 0x5124e4515f7971f8L  # 7.926949110663134E82

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->SI()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/BrowserPager;->getLogCatBrowser()Lcom/aide/ui/browsers/LogCatBrowser;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public gG()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x3cab08aa59261d60L
    .end annotation

    const-wide v0, -0x4b7631d32ed8e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->SI()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/BrowserPager;->getCurrentBrowser()I

    move-result v2

    sget v3, Lcom/aide/ui/browsers/BrowserPager;->PH:I

    if-ne v2, v3, :cond_27

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->Ws(Z)V

    goto :goto_2a

    .line 3
    :cond_27
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->fY()V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    :goto_2a
    return-void

    :catchall_2b
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public hK()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x110d5d55ddf8ccb8L
    .end annotation

    const-wide v0, -0x3511d33474f5d100L  # -9.031840538048856E52

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->Eq()V

    .line 2
    sget v2, Lcom/aide/ui/browsers/BrowserPager;->GK:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/MainActivity;->ye(IZ)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public hz()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x17cc66b9831e98f0L
    .end annotation

    const-wide v0, -0x116b0fef8fa11ac0L  # -4.843806771749574E224

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/NavigateService;->v5()Lcom/aide/ui/util/FileSpan;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/aide/ui/services/NavigateService;->u7(Z)V

    .line 3
    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->aq(Lcom/aide/ui/util/FileSpan;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    :cond_21
    return-void

    :catchall_22
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public j3()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0xc71eae65107692fL
    .end annotation

    const-wide v0, 0x393c7839302c68afL  # 5.483049871376746E-33

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->k2:Lcom/aide/common/ProgressDialogHandler;

    invoke-virtual {v2}, Lcom/aide/common/ProgressDialogHandler;->DW()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Z)V
    .registers 8
    .annotation runtime Labcd/ey;
        method = -0x141435cb43550ed0L
    .end annotation

    const-wide v0, 0x36eabdbbc3313b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->Ws(JLjava/lang/Object;Z)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->pO:Lcom/aide/ui/QuickKeysBar;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_18

    iget-boolean v5, p0, Lcom/aide/ui/MainActivity;->iW:Z

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    goto :goto_19

    :cond_18
    const/4 v5, 0x0

    :goto_19
    invoke-virtual {v2, v5}, Lcom/aide/ui/QuickKeysBar;->Zo(Z)V

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->DW()Labcd/l8;

    move-result-object v2

    if-nez p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    invoke-virtual {v2, v3}, Labcd/l8;->u7(Z)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_35

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public jJ()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x4482ed231d13564L
    .end annotation

    const-wide v0, -0x490ea7d61b594810L  # -4.860933201060293E-44

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->iW:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public k2()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0xacb1551db163eccL
    .end annotation

    const-wide v0, -0x310088975c780cd8L  # -3.4747742424800895E72

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->Eq()V

    .line 2
    sget v2, Lcom/aide/ui/browsers/BrowserPager;->hp:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/MainActivity;->ye(IZ)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public kf()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1141e974e89b4d7dL
    .end annotation

    const-wide v0, 0x1c8a5f5d529c8e97L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->gn()Landroid/app/Activity;

    move-result-object v2

    if-ne v2, p0, :cond_1a

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/aide/ui/services/OpenFileService;->ei(Z)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    :cond_1a
    return-void

    :catchall_1b
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public ko(I)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x1fd9b13c6293370L
    .end annotation

    const-wide v0, -0x2bf5312ee9cc8720L  # -7.157659959592363E96

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->iW()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-ltz p1, :cond_22

    .line 3
    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v3

    if-ge p1, v3, :cond_22

    .line 4
    invoke-virtual {v2, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public lg()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xbf108f960b65878L
    .end annotation

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-wide v1, -0x3ad82a46954aa380L

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_e
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/aide/ui/MainActivity;->checkSelfPermission(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    const/16 v0, 0x16

    .line 3
    invoke-static {p0, v3, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_2a
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v4, v0, v0}, Lcom/aide/ui/MainActivity;->yS(ZLjava/lang/String;Lcom/aide/ui/trainer/c$j;)V
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2f

    :cond_2e
    return-void

    :catchall_2f
    move-exception v0

    .line 5
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_37

    invoke-static {v0, v1, v2, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method public mb()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1aefd26cccb6e587L
    .end annotation

    const-wide v0, -0x17040751d42486bbL  # -5.22722862548179E197

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->Eq()V

    .line 2
    sget v2, Lcom/aide/ui/browsers/BrowserPager;->dW:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/MainActivity;->ye(IZ)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public oY(Z)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x5aeee3ad87a2091L
    .end annotation

    const-wide v0, -0x5dc4f09b7f38427L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->Ws(JLjava/lang/Object;Z)V

    .line 1
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_15

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->setHasEmbeddedTabs()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    :cond_15
    return-void

    :catchall_16
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x49ffabb7b9d8a187L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v0, :cond_18

    const-wide v1, 0xe9dd2f40670a86dL

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {p0, p1, p2, p3}, Labcd/iy;->v5(Ljava/lang/Object;IILandroid/content/Intent;)V

    const/16 v0, 0xc

    const/4 v1, -0x1

    if-ne p1, v0, :cond_27

    if-ne p2, v1, :cond_c2

    .line 1
    invoke-static {p3}, Lcom/aide/ui/activities/GotoBrowserActivity;->tp(Landroid/content/Intent;)V

    goto/16 :goto_c2

    :cond_27
    const v0, 0x123abc

    if-ne p1, v0, :cond_35

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->XL()Labcd/xe;

    move-result-object v0

    invoke-virtual {v0, p3}, Labcd/xe;->g3(Landroid/content/Intent;)V

    goto/16 :goto_c2

    :cond_35
    const/16 v0, 0xf

    if-ne p1, v0, :cond_40

    if-ne p2, v1, :cond_c2

    .line 3
    invoke-static {p3}, Lcom/aide/ui/build/OutputConsoleActivity;->J8(Landroid/content/Intent;)V

    goto/16 :goto_c2

    :cond_40
    const/16 v0, 0xd

    if-ne p1, v0, :cond_63

    if-ne p2, v1, :cond_c2

    .line 4
    invoke-static {p3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->ro(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 5
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mf;->we()V

    goto/16 :goto_c2

    .line 6
    :cond_55
    invoke-static {p3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->cn(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 7
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mf;->br()V

    goto :goto_c2

    :cond_63
    const/16 v0, 0xe

    if-ne p1, v0, :cond_71

    if-ne p2, v1, :cond_c2

    .line 8
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mf;->we()V

    goto :goto_c2

    :cond_71
    const/16 v0, 0x10

    if-ne p1, v0, :cond_79

    .line 9
    invoke-static {p0}, Lcom/aide/ui/y;->J0(Landroid/app/Activity;)V

    goto :goto_c2

    :cond_79
    const/16 v0, 0x11

    if-ne p1, v0, :cond_8d

    .line 10
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Gj()V

    .line 11
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->DW()Labcd/l8;

    move-result-object v0

    invoke-virtual {v0}, Labcd/l8;->DW()V

    .line 12
    sget-object v0, Lcom/aide/ui/build/BuildServiceCollect;->androidProjectBuildService:Lcom/aide/ui/build/android/AndroidProjectBuildService;

    invoke-virtual {v0}, Lcom/aide/ui/build/android/AndroidProjectBuildService;->Mz()V

    goto :goto_c2

    :cond_8d
    const/16 v0, 0x12

    if-ne p1, v0, :cond_a1

    .line 13
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Gj()V

    .line 14
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->DW()Labcd/l8;

    move-result-object v0

    invoke-virtual {v0}, Labcd/l8;->DW()V

    .line 15
    sget-object v0, Lcom/aide/ui/build/BuildServiceCollect;->javaProjectBuildService:Lcom/aide/ui/build/java/JavaProjectBuildService;

    invoke-virtual {v0}, Lcom/aide/ui/build/java/JavaProjectBuildService;->j3()V

    goto :goto_c2

    :cond_a1
    const/16 v0, 0x13

    if-ne p1, v0, :cond_b2

    .line 16
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->DW()Labcd/l8;

    move-result-object v0

    invoke-virtual {v0}, Labcd/l8;->DW()V

    .line 17
    sget-object v0, Lcom/aide/ui/build/BuildServiceCollect;->htmlCodeBuildService:Lcom/aide/ui/htmluidesigner/HtmlCodeBuildService;

    invoke-virtual {v0}, Lcom/aide/ui/htmluidesigner/HtmlCodeBuildService;->u7()V

    goto :goto_c2

    :cond_b2
    const/16 v0, 0x14

    if-ne p1, v0, :cond_c2

    .line 18
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->DW()Labcd/l8;

    move-result-object v0

    invoke-virtual {v0}, Labcd/l8;->DW()V

    .line 19
    sget-object v0, Lcom/aide/ui/build/BuildServiceCollect;->javaScriptBuildService:Lcom/aide/ui/build/javascript/JavaScriptBuildService;

    invoke-virtual {v0}, Lcom/aide/ui/build/javascript/JavaScriptBuildService;->u7()V
    :try_end_c2
    .catchall {:try_start_0 .. :try_end_c2} :catchall_c3

    :cond_c2
    :goto_c2
    return-void

    :catchall_c3
    move-exception v0

    .line 20
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_dd

    const-wide v2, 0xe9dd2f40670a86dL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_dd
    throw v0
.end method

.method public onBackPressed()V
    .registers 12
    .annotation runtime Labcd/ey;
        method = -0x46970a1f5c2a3730L
    .end annotation

    const-wide v0, -0x42a37514fac419c0L  # -4.056154328310318E-13

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->zh:Lcom/aide/ui/w;

    invoke-virtual {v2}, Lcom/aide/ui/w;->VH()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->zh:Lcom/aide/ui/w;

    invoke-virtual {v2}, Lcom/aide/ui/w;->Zo()V

    goto :goto_7d

    .line 3
    :cond_1a
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->Ws(Z)V

    goto :goto_7d

    .line 5
    :cond_29
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Eq()Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_7d

    .line 6
    :cond_36
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->U2(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7f0d0668

    const-wide/16 v5, 0x7d0

    if-eqz v2, :cond_60

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 8
    iget-wide v9, p0, Lcom/aide/ui/MainActivity;->jw:J

    sub-long v9, v7, v9

    cmp-long v2, v9, v5

    if-gez v2, :cond_52

    .line 9
    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->rN(Landroid/app/Activity;)V

    goto :goto_7d

    .line 10
    :cond_52
    iput-wide v7, p0, Lcom/aide/ui/MainActivity;->jw:J

    .line 11
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_7d

    .line 12
    :cond_60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 13
    iget-wide v9, p0, Lcom/aide/ui/MainActivity;->jw:J

    sub-long v9, v7, v9

    cmp-long v2, v9, v5

    if-gez v2, :cond_70

    .line 14
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->BT()V

    goto :goto_7d

    .line 15
    :cond_70
    iput-wide v7, p0, Lcom/aide/ui/MainActivity;->jw:J

    .line 16
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_7d
    .catchall {:try_start_5 .. :try_end_7d} :catchall_7e

    :goto_7d
    return-void

    :catchall_7e
    move-exception v2

    .line 17
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_86

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_86
    throw v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x894ed36bb0caf1dL
    .end annotation

    const-wide v0, 0xa6ca3e61eb5a139L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->vJ()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/aide/common/KeyStrokeDetector;->onConfigChange(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->setHasEmbeddedTabs()V

    .line 4
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->q7()V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 24
    .annotation runtime Labcd/ey;
        method = 0x12dd9e31299f823dL
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-string v0, "EXTRA_GCM_NOTIFICATION_IAP_PRODUCT_ID"

    const-wide v2, 0x1783b0adcb7L

    const-wide v13, 0x45d01cc9729a957L

    :try_start_10
    const-string v4, "androidRelease"

    const-string v5, "fe5d2222"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "https://probes.probelytics.com/project/iF0snISTR5Ko3hbTUY88bg/audience/dev/current.probes"

    const-string v9, "https://probes.probelytics.com/project/iF0snISTR5Ko3hbTUY88bg/audience/public/current.probes"

    const-string v10, "https://ingest.probelytics.com/api/report/v1alpha1/data/project/iF0snISTR5Ko3hbTUY88bg"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v10}, Labcd/iy;->VH(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v1, :cond_28

    invoke-static {v13, v14, v11, v12}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    const-string v1, "onCreate"

    .line 1
    invoke-static {v11, v1}, Lcom/aide/common/AppLog;->Zo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/aide/common/AndroidHelper;->er()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 3
    invoke-static {}, Ltv/ouya/console/api/e;->v5()Ltv/ouya/console/api/e;

    move-result-object v1

    const-string v2, "9b57b7e2-2fa3-44db-9131-04b76a1f491c"

    invoke-virtual {v1, v11, v2}, Ltv/ouya/console/api/e;->Zo(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    :cond_3c
    invoke-static/range {p0 .. p0}, Lcom/aide/ui/ServiceContainer;->sh(Landroid/content/Context;)V

    .line 5
    invoke-static/range {p0 .. p0}, Lcom/aide/common/AndroidHelper;->v5(Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v11, Lcom/aide/ui/MainActivity;->Gj:Z

    .line 7
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v11, Lcom/aide/ui/MainActivity;->e3:Landroid/os/Handler;

    .line 8
    invoke-static/range {p0 .. p0}, Lcom/aide/ui/AppPreferences;->yS(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v11, Lcom/aide/ui/MainActivity;->n5:Z

    .line 9
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->U2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/aide/common/AndroidHelper;->cn(Landroid/app/Activity;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/aide/ui/firebase/FireBaseLogEvent;->gn()Z

    move-result v2

    if-nez v2, :cond_67

    .line 11
    new-instance v2, Lcom/aide/ui/MainActivity$q;

    invoke-direct {v2, v11}, Lcom/aide/ui/MainActivity$q;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static {v11, v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->Zo(Landroid/content/Context;Labcd/b0;)V

    .line 12
    :cond_67
    invoke-super/range {p0 .. p1}, Lcom/aide/ui/ThemedActionbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    if-nez v2, :cond_7f

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->pN()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    :cond_7f
    const/4 v2, 0x0

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_9c

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_9c

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 17
    :cond_9c
    invoke-static {v11, v2}, Lcom/aide/ui/ServiceContainer;->cb(Lcom/aide/ui/MainActivity;Ljava/lang/String;)V

    .line 18
    new-instance v3, Lcom/aide/ui/QuickActionMenu;

    const v4, 0x7f0b0005

    invoke-direct {v3, v11, v4}, Lcom/aide/ui/QuickActionMenu;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v3, v11, Lcom/aide/ui/MainActivity;->sg:Lcom/aide/ui/QuickActionMenu;

    .line 19
    new-instance v3, Lcom/aide/common/KeyStrokeDetector;

    invoke-direct {v3, v11}, Lcom/aide/common/KeyStrokeDetector;-><init>(Landroid/content/Context;)V

    iput-object v3, v11, Lcom/aide/ui/MainActivity;->fY:Lcom/aide/common/KeyStrokeDetector;

    .line 20
    invoke-static {v11, v11}, Lcom/aide/ui/AppPreferences;->cb(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 21
    invoke-static {}, Lcom/aide/ui/AppPreferences;->Hw()I

    move-result v3

    iput v3, v11, Lcom/aide/ui/MainActivity;->eU:I

    const v3, 0x7f0a0026

    .line 22
    invoke-virtual {v11, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 23
    invoke-static/range {p0 .. p0}, Lcom/aide/common/AndroidHelper;->gW(Landroid/app/Activity;)V

    .line 24
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v3

    if-nez v3, :cond_d2

    const v3, 0x7f0800f3

    .line 25
    invoke-virtual {v11, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/common/AndroidHelper;->KD(Landroid/view/View;)V

    .line 26
    :cond_d2
    new-instance v3, Lcom/aide/ui/QuickKeysBar;

    invoke-direct {v3, v11}, Lcom/aide/ui/QuickKeysBar;-><init>(Lcom/aide/ui/MainActivity;)V

    iput-object v3, v11, Lcom/aide/ui/MainActivity;->pO:Lcom/aide/ui/QuickKeysBar;

    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->iW()V

    .line 28
    new-instance v3, Lcom/aide/ui/m;

    const v4, 0x7f0800f4

    invoke-direct {v3, v11, v4}, Lcom/aide/ui/m;-><init>(Landroid/app/Activity;I)V

    iput-object v3, v11, Lcom/aide/ui/MainActivity;->cT:Lcom/aide/ui/m;

    .line 29
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aide/ui/m;->FH(Z)V

    .line 30
    iget-object v3, v11, Lcom/aide/ui/MainActivity;->cT:Lcom/aide/ui/m;

    new-instance v4, Lcom/aide/ui/MainActivity$r;

    invoke-direct {v4, v11}, Lcom/aide/ui/MainActivity$r;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Lcom/aide/ui/m;->DW(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_10a

    invoke-static {}, Lcom/aide/ui/AppPreferences;->we()Z

    move-result v4

    if-eqz v4, :cond_10a

    const/4 v4, 0x1

    goto :goto_10b

    :cond_10a
    const/4 v4, 0x0

    :goto_10b
    invoke-virtual {v3, v4}, Lcom/aide/ui/views/SplitView;->setSwipeEnabled(Z)V

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/MainActivity$s;

    invoke-direct {v4, v11}, Lcom/aide/ui/MainActivity$s;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Lcom/aide/ui/views/SplitView;->setOnSplitChangeListener(Lcom/aide/ui/views/SplitView$OnSplitChangeListener;)V

    const v3, 0x7f08011e

    .line 33
    invoke-virtual {v11, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/MainActivity$t;

    invoke-direct {v4, v11}, Lcom/aide/ui/MainActivity$t;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v3

    if-eqz v3, :cond_13e

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_1b2

    .line 37
    :cond_13e
    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->pN()Z

    move-result v3

    if-eqz v3, :cond_172

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 40
    invoke-static/range {p0 .. p0}, Lcom/aide/common/AndroidHelper;->lg(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_16a

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v3

    invoke-virtual {v3}, Labcd/mf;->dx()Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    :cond_16a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_1b2

    .line 43
    :cond_172
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070001

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0800ed

    .line 46
    invoke-virtual {v11, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/ActionBarNoTabs;

    invoke-direct {v4, v11}, Lcom/aide/ui/ActionBarNoTabs;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f080121

    .line 47
    invoke-virtual {v11, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/SearchBarNoTabs;

    invoke-direct {v4, v11}, Lcom/aide/ui/SearchBarNoTabs;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :goto_1b2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v3

    if-eqz v3, :cond_1c4

    .line 49
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->Zo()Lcom/aide/ui/build/BuildService;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/MainActivity$u;

    invoke-direct {v4, v11}, Lcom/aide/ui/MainActivity$u;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Lcom/aide/ui/build/BuildService;->FH(Lcom/aide/ui/build/BuildService$BuildListener;)V

    .line 50
    :cond_1c4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v3

    if-eqz v3, :cond_1d7

    invoke-static/range {p0 .. p0}, Lcom/aide/common/AndroidHelper;->U2(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1d7

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 52
    :cond_1d7
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aide/ui/services/OpenFileService;->yS(Ljava/lang/String;)V

    .line 53
    sget-object v2, Lcom/aide/ui/ServiceContainer;->P8:Ljava/lang/String;

    const-string v3, "com.aide.web"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f6

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->g3()Lcom/aide/ui/browsers/LogCatBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/LogCatBrowser;->Ws()V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/DebugBrowser;->Hw()V

    .line 56
    :cond_1f6
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Lcom/aide/ui/util/FileSpan;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/services/NavigateService;->VH(Lcom/aide/ui/util/FileSpan;)V

    .line 57
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->J0()Lcom/aide/ui/services/ErrorService;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/aide/ui/services/ErrorService;->u7(Lcom/aide/ui/services/ErrorService$ErrorListener;)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/aide/ui/AIDEEditorPager;->setSoftKeyboardListener(Lcom/aide/ui/AIDEEditorPager$e;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->setHasEmbeddedTabs()V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->q7()V

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->U2()V

    .line 62
    iget-boolean v2, v11, Lcom/aide/ui/MainActivity;->kf:Z

    if-eqz v2, :cond_225

    const-string v2, "First run after inital install"

    .line 63
    invoke-static {v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 64
    :cond_225
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_23c

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_SHOWN_FROM_TRAINER_NOTIFICATION"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_23c

    const-string v2, "Shown from trainer notification"

    .line 65
    invoke-static {v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 66
    :cond_23c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2
    :try_end_240
    .catchall {:try_start_10 .. :try_end_240} :catchall_412

    const-string v3, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    if-eqz v2, :cond_253

    :try_start_244
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_253

    const-string v2, "Shown from promo notification"

    .line 67
    invoke-static {v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 68
    :cond_253
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->I()Z

    move-result v2

    if-nez v2, :cond_26c

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    if-nez v2, :cond_26c

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->isOpenProject()Z

    move-result v2

    if-eqz v2, :cond_26c

    .line 69
    invoke-static {v5}, Lcom/aide/ui/ServiceContainer;->j6(Z)V

    .line 70
    :cond_26c
    invoke-static {}, Lcom/aide/ui/n;->EQ()Z

    move-result v2

    if-eqz v2, :cond_2c5

    .line 71
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getLicenseService()Lcom/aide/ui/services/LicenseService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/LicenseService;->QX()Z

    move-result v2

    if-nez v2, :cond_2c5

    .line 72
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getLicenseService()Lcom/aide/ui/services/LicenseService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/LicenseService;->Ws()Z

    move-result v2

    if-nez v2, :cond_2c5

    .line 73
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getLicenseService()Lcom/aide/ui/services/LicenseService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/LicenseService;->g3()Z

    move-result v2

    if-nez v2, :cond_2c5

    .line 74
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    if-nez v2, :cond_29c

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->I()Z

    move-result v2

    if-nez v2, :cond_2c5

    :cond_29c
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 75
    invoke-static {}, Lcom/aide/ui/n;->FH()Ljava/util/GregorianCalendar;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c5

    .line 76
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {}, Lcom/aide/ui/n;->FH()Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-static/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->nw(Landroid/content/Context;)I

    move-result v18

    const-string v19, "20% off special offer"

    const-string v20, "Special offer"

    const-string v21, "Save 20% on an annual subscription"

    invoke-static/range {v15 .. v21}, Lcom/aide/ui/PromoNotificationAlarmReceiver;->FH(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2cc

    .line 77
    :cond_2c5
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/PromoNotificationAlarmReceiver;->DW(Landroid/content/Context;)V

    .line 78
    :goto_2cc
    invoke-static {}, Lcom/aide/common/AndroidHelper;->er()Z

    move-result v2

    if-eqz v2, :cond_2f1

    .line 79
    invoke-static {}, Ltv/ouya/console/api/e;->v5()Ltv/ouya/console/api/e;

    move-result-object v2

    invoke-virtual {v2}, Ltv/ouya/console/api/e;->gn()Z

    move-result v2

    if-nez v2, :cond_2f1

    const-string v2, "AIDE for OUYA"

    const-string v3, "This version of AIDE is only intended to run on the OUYA. Contact info@appfour.com for details."

    const/4 v4, 0x0

    .line 80
    new-instance v5, Lcom/aide/ui/MainActivity$v;

    invoke-direct {v5, v11}, Lcom/aide/ui/MainActivity$v;-><init>(Lcom/aide/ui/MainActivity;)V

    new-instance v6, Lcom/aide/ui/MainActivity$a;

    invoke-direct {v6, v11}, Lcom/aide/ui/MainActivity$a;-><init>(Lcom/aide/ui/MainActivity;)V

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/aide/common/MessageBox;->SI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    .line 81
    :cond_2f1
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2
    :try_end_2f5
    .catchall {:try_start_244 .. :try_end_2f5} :catchall_412

    const-string v4, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    if-eqz v2, :cond_31a

    .line 82
    :try_start_2f9
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mf;->aq()V

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_315

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_315

    .line 84
    invoke-static/range {p0 .. p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->rN(Landroid/app/Activity;)V

    goto/16 :goto_411

    .line 85
    :cond_315
    invoke-static/range {p0 .. p0}, Lcom/aide/ui/y;->XL(Landroid/app/Activity;)V

    goto/16 :goto_411

    .line 86
    :cond_31a
    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->WB()V

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_324

    goto :goto_325

    :cond_324
    const/4 v1, 0x0

    :goto_325
    if-nez v1, :cond_40e

    .line 88
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/services/OpenFileService;->j3()Z

    move-result v1

    if-eqz v1, :cond_340

    .line 89
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->EQ()Lcom/aide/ui/services/DropboxService;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/OpenFileService;->u7()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aide/ui/services/DropboxService;->g3(Ljava/lang/String;)V

    .line 90
    :cond_340
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/services/ProjectService;->isOpenProject()Z

    move-result v1

    if-eqz v1, :cond_359

    .line 91
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->EQ()Lcom/aide/ui/services/DropboxService;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->P8()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aide/ui/services/DropboxService;->ca(Ljava/util/List;)V

    .line 92
    :cond_359
    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->gW()V

    .line 93
    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->Mr()V

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_384

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_384

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_NAVIGATE_BREAKPOINT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_384

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->jw()V

    goto/16 :goto_411

    .line 97
    :cond_384
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_399

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_399

    .line 99
    invoke-static/range {p0 .. p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->rN(Landroid/app/Activity;)V

    goto/16 :goto_411

    .line 100
    :cond_399
    sget-object v1, Lcom/aide/ui/ServiceContainer;->P8:Ljava/lang/String;

    const-string v2, "com.aide.ui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3bd

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3bd

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3bd

    .line 102
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v1

    if-nez v1, :cond_3bd

    .line 103
    invoke-static/range {p0 .. p0}, Lcom/aide/ui/y;->XL(Landroid/app/Activity;)V

    goto :goto_411

    .line 104
    :cond_3bd
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3ea

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_SHOWN_FROM_GCM_NOTIFICATION"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3ea

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3ea

    const-string v1, "Shown from GCM notification"

    .line 107
    invoke-static {v1}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/aide/ui/y;->EQ(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_411

    .line 109
    :cond_3ea
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_40a

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_UPGRADE_NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_40a

    const-string v0, "Shown from upgrade notification"

    .line 111
    invoke-static {v0}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/aide/ui/MainActivity$b;

    invoke-direct {v0, v11}, Lcom/aide/ui/MainActivity$b;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static {v11, v0}, Lcom/aide/ui/marketing/WhatsNewDialog;->Hw(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_411

    .line 113
    :cond_40a
    invoke-static/range {p0 .. p0}, Lcom/aide/ui/y;->J8(Landroid/app/Activity;)V

    goto :goto_411

    .line 114
    :cond_40e
    invoke-static/range {p0 .. p0}, Lcom/aide/ui/y;->u7(Landroid/app/Activity;)V
    :try_end_411
    .catchall {:try_start_2f9 .. :try_end_411} :catchall_412

    :goto_411
    return-void

    :catchall_412
    move-exception v0

    .line 115
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_41a

    invoke-static {v0, v13, v14, v11, v12}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41a
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x3a606ba0f135488cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v0, :cond_11

    const-wide v0, 0x97eccde17b400L

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    invoke-static {p0, p1}, Lcom/aide/common/MessageBox;->Zo(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x97eccde17b400L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method protected onDestroy()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x28a072cc34962373L
    .end annotation

    const-wide v0, 0x36d084aa3578fb11L  # 1.157347968805432E-44

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy - finishing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/aide/common/AppLog;->Zo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->e3:Landroid/os/Handler;

    iget-object v3, p0, Lcom/aide/ui/MainActivity;->sE:Lcom/aide/ui/MainActivity$w;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->J0()Lcom/aide/ui/services/ErrorService;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/aide/ui/services/ErrorService;->Mz(Lcom/aide/ui/services/ErrorService$ErrorListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->Ev()V

    .line 6
    invoke-static {p0, p0}, Lcom/aide/ui/AppPreferences;->aj(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 7
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->OW()V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_43

    return-void

    :catchall_43
    move-exception v2

    .line 8
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4b
    throw v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x14df3a36604c26ecL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v0, :cond_11

    const-wide v0, -0x13f775e4d2e12dc0L  # -2.5816196980466632E212

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->fY:Lcom/aide/common/KeyStrokeDetector;

    invoke-virtual {v0, p1, p2}, Lcom/aide/common/KeyStrokeDetector;->onKeyDown(ILandroid/view/KeyEvent;)V

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return p1

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x13f775e4d2e12dc0L  # -2.5816196980466632E212

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x9a9b59969bd2025L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v0, :cond_11

    const-wide v0, 0x51ac692188e5d47fL  # 2.759626041669824E85

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1c

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->Xa()V

    .line 2
    :cond_1c
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->fY:Lcom/aide/common/KeyStrokeDetector;

    invoke-virtual {v0, p1, p2}, Lcom/aide/common/KeyStrokeDetector;->onKeyUp(ILandroid/view/KeyEvent;)V

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return p1

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0x51ac692188e5d47fL  # 2.759626041669824E85

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 13
    .annotation runtime Labcd/ey;
        method = -0x7793dba808cdc4fL
    .end annotation

    const-string v0, "NavigateFile"

    const-string v1, "EXTRA_NAVIGATE_PLAY_STORE_INTENT_SENDER"

    const-wide v2, 0x32171ccf1758c7fL

    :try_start_9
    sget-boolean v4, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v4, :cond_10

    invoke-static {v2, v3, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {p0, p1}, Labcd/iy;->XL(Ljava/lang/Object;Landroid/content/Intent;)V

    const-string v4, "onNewIntent"

    .line 1
    invoke-static {p0, v4}, Lcom/aide/common/AppLog;->Zo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v4, 0x0

    if-eqz p1, :cond_2b

    const-string v5, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    .line 3
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 4
    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->rN(Landroid/app/Activity;)V

    goto/16 :goto_15c

    :cond_2b
    if-eqz p1, :cond_3c

    const-string v5, "EXTRA_SHOWN_FROM_TRAINER_NOTIFICATION"

    .line 5
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3c

    const-string v0, "Shown from trainer notification"

    .line 6
    invoke-static {v0}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    goto/16 :goto_15c

    :cond_3c
    if-eqz p1, :cond_50

    const-string v5, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    .line 7
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_50

    const-string v0, "Shown from promo notification"

    .line 8
    invoke-static {v0}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Lcom/aide/ui/y;->XL(Landroid/app/Activity;)V

    goto/16 :goto_15c

    :cond_50
    if-eqz p1, :cond_6a

    const-string v5, "EXTRA_SHOWN_FROM_GCM_NOTIFICATION"

    .line 10
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6a

    const-string v0, "Shown from gcm notification"

    .line 11
    invoke-static {v0}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    const-string v0, "EXTRA_GCM_NOTIFICATION_IAP_PRODUCT_ID"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aide/ui/y;->EQ(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_15c

    :cond_6a
    if-eqz p1, :cond_7f

    const-string v5, "EXTRA_UPGRADE_NOTIFICATION_CLICKED"

    .line 13
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7f

    const-string v0, "Shown from upgrade notification"

    .line 14
    invoke-static {v0}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-static {p0, v0}, Lcom/aide/ui/marketing/WhatsNewDialog;->Hw(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto/16 :goto_15c

    :cond_7f
    if-eqz p1, :cond_a0

    .line 16
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_a0

    .line 17
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_a0

    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 19
    invoke-static {p0, v0}, Labcd/xe;->aj(Landroid/app/Activity;Landroid/content/IntentSender;)V

    goto/16 :goto_15c

    :cond_a0
    if-eqz p1, :cond_f7

    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_f7

    .line 21
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "EXTRA_SHOWN_FROM_NOTIFICATION"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 22
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->J0()Lcom/aide/ui/services/ErrorService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/services/ErrorService;->gW()I

    move-result v0

    if-lez v0, :cond_c1

    .line 23
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->fY()V

    .line 24
    :cond_c1
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->Zo()Lcom/aide/ui/build/BuildService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/BuildService;->tp()Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->Zo()Lcom/aide/ui/build/BuildService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/BuildService;->EQ()Z

    move-result v0

    if-nez v0, :cond_da

    .line 25
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Gj()V

    goto/16 :goto_15c

    .line 26
    :cond_da
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->QX()Lcom/aide/ui/scm/GitService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/scm/GitService;->Sf()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 27
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->aX()V

    goto/16 :goto_15c

    .line 28
    :cond_e9
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->EQ()Lcom/aide/ui/services/DropboxService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/services/DropboxService;->sh()Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 29
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Cz()V

    goto :goto_15c

    :cond_f7
    if-eqz p1, :cond_10b

    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_10b

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->qp(Ljava/lang/String;)V

    goto :goto_15c

    :cond_10b
    if-eqz p1, :cond_145

    .line 32
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_145

    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_145

    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "NavigateLine"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "NavigateColumn"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 36
    new-instance v1, Lcom/aide/ui/util/FileSpan;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v1

    move v7, v9

    move v8, v10

    invoke-direct/range {v5 .. v10}, Lcom/aide/ui/util/FileSpan;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p0, v1}, Lcom/aide/ui/MainActivity;->aq(Lcom/aide/ui/util/FileSpan;)V

    goto :goto_15c

    :cond_145
    if-eqz p1, :cond_15c

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15c

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_NAVIGATE_BREAKPOINT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 39
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->jw()V
    :try_end_15c
    .catchall {:try_start_9 .. :try_end_15c} :catchall_15d

    :cond_15c
    :goto_15c
    return-void

    :catchall_15d
    move-exception v0

    .line 40
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_165

    invoke-static {v0, v2, v3, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_165
    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .annotation runtime Labcd/ey;
        method = -0x594e444b22480b0L
    .end annotation

    const-wide v0, -0x4701932ba1861e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    const/4 v4, 0x1

    if-ne v2, v3, :cond_24

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mf;->dx()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->rN(Landroid/app/Activity;)V

    :cond_23
    return v4

    .line 3
    :cond_24
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-static {v2}, Lcom/aide/ui/AppCommands;->u7(I)Lcom/aide/ui/command/MenuItemCommand;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 4
    invoke-interface {v2}, Lcom/aide/ui/command/MenuItemCommand;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Main Menu: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 6
    invoke-interface {v2}, Lcom/aide/ui/command/MenuItemCommand;->run()Z

    return v4

    .line 7
    :cond_50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-static {v2}, Lcom/aide/ui/AppCommands;->DW(I)Labcd/rf;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 8
    invoke-interface {v2}, Labcd/rf;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action bar command: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Labcd/rf;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 10
    invoke-interface {v2}, Labcd/rf;->run()Z

    return v4

    .line 11
    :cond_7c
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1
    :try_end_80
    .catchall {:try_start_5 .. :try_end_80} :catchall_81

    return p1

    :catchall_81
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_89

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_89
    throw v2
.end method

.method protected onPause()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x102a3bc90f602b03L
    .end annotation

    const-wide v0, -0x1c524e36f9ac52f7L  # -1.4344425952796383E172

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "onPause"

    .line 1
    invoke-static {p0, v2}, Lcom/aide/common/AppLog;->Zo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v2, p0, Lcom/aide/ui/MainActivity;->eU:I

    const/4 v3, 0x0

    if-lez v2, :cond_1e

    .line 3
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/aide/ui/services/OpenFileService;->KD(ZZ)V

    .line 4
    :cond_1e
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 5
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->nw()Lcom/aide/ui/trainer/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/b;->J0()V

    .line 6
    :cond_2b
    iput-boolean v3, p0, Lcom/aide/ui/MainActivity;->iW:Z

    .line 7
    invoke-super {p0}, Landroid/app/Activity;->onPause()V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v2

    .line 8
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x66de44f9d1fa64L
    .end annotation

    const-wide v0, 0x24e18ed276cd9f18L  # 4.947256633470233E-131

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v4

    if-eqz v4, :cond_24

    const v4, 0x7f0b000d

    .line 5
    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_38

    :cond_24
    const v4, 0x7f0b000c

    .line 6
    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 7
    new-instance v3, Lcom/aide/ui/x;

    invoke-direct {v3, p1}, Lcom/aide/ui/x;-><init>(Landroid/view/Menu;)V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->AL:Lcom/aide/ui/x;

    .line 8
    new-instance v3, Lcom/aide/ui/l;

    invoke-direct {v3, p1}, Lcom/aide/ui/l;-><init>(Landroid/view/Menu;)V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->w9:Lcom/aide/ui/l;

    .line 9
    :goto_38
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->vJ()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 10
    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->sg(Landroid/view/Menu;)V

    .line 11
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->lg(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_60

    const v3, 0x7f0800f9

    .line 12
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 13
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->u7(Landroid/content/Context;)F

    move-result v4

    const/high16 v5, 0x43b40000  # 360.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5c

    const/4 v4, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v4, 0x0

    :goto_5d
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 14
    :cond_60
    iget-object v3, p0, Lcom/aide/ui/MainActivity;->AL:Lcom/aide/ui/x;

    if-eqz v3, :cond_6e

    .line 15
    iget-object v3, p0, Lcom/aide/ui/MainActivity;->AL:Lcom/aide/ui/x;

    invoke-virtual {v3}, Lcom/aide/ui/x;->DW()V

    .line 16
    iget-object v3, p0, Lcom/aide/ui/MainActivity;->w9:Lcom/aide/ui/l;

    invoke-virtual {v3}, Lcom/aide/ui/l;->FH()V
    :try_end_6e
    .catchall {:try_start_5 .. :try_end_6e} :catchall_6f

    :cond_6e
    return v2

    :catchall_6f
    move-exception v2

    .line 17
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_77

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    throw v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0xcd4cef38977ca95L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v0, :cond_14

    const-wide v1, -0x370c90506155fa45L  # -2.7090211426596776E43

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/16 v0, 0x15

    if-ne p1, v0, :cond_23

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sG()Lcom/aide/ui/browsers/FileBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/FileBrowser;->QX()V

    .line 2
    invoke-static {p0}, Lcom/aide/ui/y;->Zo(Landroid/app/Activity;)V

    goto :goto_36

    :cond_23
    const/16 v0, 0x16

    if-ne p1, v0, :cond_36

    .line 3
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/aide/ui/MainActivity;->checkSelfPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 4
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()V
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_37

    :cond_36
    :goto_36
    return-void

    :catchall_37
    move-exception v0

    .line 5
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0x370c90506155fa45L  # -2.7090211426596776E43

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v0
.end method

.method protected onResume()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x160ecf6eac6921d4L
    .end annotation

    const-wide v0, 0xa74dc7160456540L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, p0, Lcom/aide/ui/MainActivity;->iW:Z

    .line 3
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->q7:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_5a

    .line 4
    :try_start_15
    iget-object v3, p0, Lcom/aide/ui/MainActivity;->q7:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_57

    .line 6
    :try_start_1b
    iget-boolean v2, p0, Lcom/aide/ui/MainActivity;->Z1:Z

    if-eqz v2, :cond_2b

    .line 7
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/aide/ui/services/OpenFileService;->KD(ZZ)V

    .line 8
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->recreate()V

    goto :goto_3c

    .line 9
    :cond_2b
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->EQ()Lcom/aide/ui/services/DropboxService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/DropboxService;->sG()V

    .line 10
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->kf()V

    .line 11
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->OW()V

    .line 12
    :goto_3c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->q7()V

    .line 13
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    if-nez v2, :cond_56

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->isOpenProject()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 14
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->sG()Z
    :try_end_56
    .catchall {:try_start_1b .. :try_end_56} :catchall_5a

    :cond_56
    return-void

    :catchall_57
    move-exception v3

    .line 15
    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v2

    .line 16
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_62

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_62
    throw v2
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x3fe0337248342680L
    .end annotation

    const-wide v0, -0x32447d7502b67178L  # -2.8971341205244366E66

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const-string v0, "dummy"
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x22b11faf4d021ddL
    .end annotation

    const-string v0, "send_analytics_data"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v1, :cond_e

    const-wide v1, -0x682c1c5187351351L  # -6.811520496247521E-194

    invoke-static {v1, v2, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_e
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2
    invoke-static {}, Lcom/aide/ui/firebase/FireBaseLogEvent;->VH()V

    goto :goto_23

    :cond_18
    const-string v1, "Setting changed"

    const-string v2, "key"

    .line 3
    invoke-static {v2, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->EQ(Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    :goto_23
    invoke-static {}, Lcom/aide/ui/AppPreferences;->Hw()I

    move-result v1

    iput v1, p0, Lcom/aide/ui/MainActivity;->eU:I

    const-string v1, "user_androidjar"

    .line 5
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "user_m2repositories"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 6
    :cond_39
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/services/ProjectService;->wc()V

    .line 7
    :cond_40
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getEngineService()Lcom/aide/ui/services/EngineService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/services/EngineService;->EQ()V

    .line 8
    sget-object v1, Lcom/aide/ui/ServiceContainer;->P8:Ljava/lang/String;

    const-string v2, "com.aide.web"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 9
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->g3()Lcom/aide/ui/browsers/LogCatBrowser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/browsers/LogCatBrowser;->gn()V

    .line 10
    :cond_58
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->br()Lcom/aide/ui/views/SplitView;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6b

    invoke-static {}, Lcom/aide/ui/AppPreferences;->we()Z

    move-result v2

    if-eqz v2, :cond_6b

    const/4 v2, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v2, 0x0

    :goto_6c
    invoke-virtual {v1, v2}, Lcom/aide/ui/views/SplitView;->setSwipeEnabled(Z)V

    const-string v1, "light_theme"

    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    const-string v1, "app_language"

    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    const-string v1, "editor_tabs"

    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 15
    :cond_8d
    iput-boolean v3, p0, Lcom/aide/ui/MainActivity;->Z1:Z

    .line 16
    :cond_8f
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->OW()V

    const-string v0, "editor_font_size"

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 18
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->br()V
    :try_end_a5
    .catchall {:try_start_2 .. :try_end_a5} :catchall_a6

    :cond_a5
    return-void

    :catchall_a6
    move-exception v0

    .line 19
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_b7

    const-wide v2, -0x682c1c5187351351L  # -6.811520496247521E-194

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b7
    throw v0
.end method

.method protected onStart()V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x12b816c690e2216fL
    .end annotation

    const-wide v0, -0x1a1e20a85053abfbL  # -5.93295469924567E182

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "isPremiumKeyInstalled"

    .line 3
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getLicenseService()Lcom/aide/ui/services/LicenseService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/services/LicenseService;->QX()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isPremium"

    .line 4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getLicenseService()Lcom/aide/ui/services/LicenseService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/services/LicenseService;->Ws()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isPremiumHacked"

    .line 5
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getLicenseService()Lcom/aide/ui/services/LicenseService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/services/LicenseService;->QX()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_4f

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getLicenseService()Lcom/aide/ui/services/LicenseService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/services/LicenseService;->Ws()Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v4, 0x1

    goto :goto_50

    :cond_4f
    const/4 v4, 0x0

    :goto_50
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isUiBuilderKeyInstalled"

    .line 6
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getLicenseService()Lcom/aide/ui/services/LicenseService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/services/LicenseService;->U2()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isUiBuilderLicensed"

    .line 7
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getLicenseService()Lcom/aide/ui/services/LicenseService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/services/LicenseService;->Mr()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Main"

    .line 8
    invoke-static {p0, v3, v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->aM(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->I()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 10
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    if-eqz v2, :cond_8d

    const-string v2, "Trainer view"

    goto :goto_8f

    :cond_8d
    const-string v2, "Expert view"

    :goto_8f
    invoke-static {v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->Ws(Ljava/lang/String;)V

    :cond_92
    const-string v2, "os.arch"

    .line 11
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9c

    const-string v2, "unknown"

    .line 12
    :cond_9c
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b2

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->Sf()Z

    move-result v3

    if-eqz v3, :cond_b2

    const-string v2, "x86"

    .line 13
    :cond_b2
    invoke-static {v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->J8(Ljava/lang/String;)V

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CPU arch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->U2(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d4

    const-string v2, "Android TV detected"

    .line 16
    invoke-static {v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 17
    :cond_d4
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->a8(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_df

    const-string v2, "Chromebook detected"

    .line 18
    invoke-static {v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 19
    :cond_df
    iput-boolean v5, p0, Lcom/aide/ui/MainActivity;->Jl:Z
    :try_end_e1
    .catchall {:try_start_5 .. :try_end_e1} :catchall_e2

    return-void

    :catchall_e2
    move-exception v2

    .line 20
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_ea

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_ea
    throw v2
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x2febc4795c3ee333L
    .end annotation

    const-wide v0, -0x662307f847986ebL  # -6.605505675453735E277

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->a8(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->Eq()V

    .line 3
    :cond_19
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v2, "Main"

    .line 4
    invoke-static {p0, v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->DW(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/aide/ui/MainActivity;->Jl:Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public onUserLeaveHint()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2f266113142259f0L
    .end annotation

    const-wide v0, -0x5268d6c48fca0a10L  # -4.54799296152156E-89

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->Eq()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public oy()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x4f8a5bcf747deecfL
    .end annotation

    const-wide v0, 0x363d6765f6edf133L  # 2.0118964532627982E-47

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800ee

    .line 1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/aide/ui/MainActivity;->sg:Lcom/aide/ui/QuickActionMenu;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/aide/ui/QuickActionMenu;->QX(Landroid/view/View;Z)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public pO()V
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0xc55debdd9b5c1b4L
    .end annotation

    const-wide v0, -0x1beadc70dcc0fde0L  # -1.3070733326220433E174

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->e3:Landroid/os/Handler;

    iget-object v3, p0, Lcom/aide/ui/MainActivity;->sE:Lcom/aide/ui/MainActivity$w;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget v2, p0, Lcom/aide/ui/MainActivity;->eU:I

    if-lez v2, :cond_25

    .line 3
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->e3:Landroid/os/Handler;

    iget-object v3, p0, Lcom/aide/ui/MainActivity;->sE:Lcom/aide/ui/MainActivity$w;

    iget v4, p0, Lcom/aide/ui/MainActivity;->eU:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    :cond_25
    return-void

    :catchall_26
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public q7()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x50c896ef4c4be7e0L
    .end annotation

    const-wide v0, 0x1a82f4ccd6fe89ecL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->CU()Z

    move-result v2

    if-nez v2, :cond_19

    .line 2
    iget-boolean v2, p0, Lcom/aide/ui/MainActivity;->Gj:Z

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3
    :cond_19
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->Jl()V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public qp(Ljava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/ey;
        method = 0x633de3bb3160e4cL
    .end annotation

    const-wide v0, -0x9f7ae15b41f9130L  # -3.73929306328093E260

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java"

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    const-string v4, "xml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    const-string v4, "svg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    if-eqz v3, :cond_79

    const-string v2, "text"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_79

    .line 4
    :cond_3b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v2, v4, :cond_94

    .line 5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    .line 6
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_95

    .line 8
    :try_start_57
    invoke-static {p0, v2}, Lcom/aide/ui/MainActivity;->gn(Ljava/lang/Object;Landroid/content/Intent;)V
    :try_end_5a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_57 .. :try_end_5a} :catch_5b
    .catchall {:try_start_57 .. :try_end_5a} :catchall_95

    goto :goto_94

    .line 9
    :catch_5b
    :try_start_5b
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No handler found for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_94

    .line 10
    :cond_79
    :goto_79
    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->ei(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_94

    .line 11
    new-instance v2, Lcom/aide/ui/util/FileSpan;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/aide/ui/util/FileSpan;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->aq(Lcom/aide/ui/util/FileSpan;)V

    .line 12
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/services/ProjectService;->VH(Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_5b .. :try_end_94} :catchall_95

    :cond_94
    :goto_94
    return-void

    :catchall_95
    move-exception v2

    .line 13
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_9d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_9d
    throw v2
.end method

.method public rN()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x27ca3ea55099dab9L
    .end annotation

    const-wide v0, -0x12fd429e7892435dL  # -1.2920256454680675E217

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->et()Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v2}, Lcom/aide/ui/MainActivity;->er(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->Eq()V

    .line 4
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->et()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/AIDEEditorPager;->setIdentifierClickingEnabled(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->q7()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    :cond_2b
    return-void

    :catchall_2c
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method public recreate()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0xe2149c00b0f647fL
    .end annotation

    const-wide v0, -0x15fff782e74c93d5L  # -3.927228708246018E202

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/common/MessageBox;->v5()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->recreate()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public ro()Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x14b7e465586ce0L
    .end annotation

    const-wide v0, -0x4bdfc451c8fcd97cL  # -1.293043170447027E-57

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_23

    .line 1
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1b} :catch_1c
    .catchall {:try_start_c .. :try_end_1b} :catchall_23

    return-object v0

    :catch_1c
    move-exception v2

    .line 2
    :try_start_1d
    invoke-static {v2}, Lcom/aide/common/AppLog;->v5(Ljava/lang/Throwable;)V

    const-string v0, ""
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_23

    return-object v0

    :catchall_23
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public sG()Lcom/aide/ui/browsers/FileBrowser;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x41e5853a67dfaf0L
    .end annotation

    const-wide v0, -0x43963a03bc5d3d40L  # -1.1177422050532188E-17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->SI()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/BrowserPager;->getFileBrowser()Lcom/aide/ui/browsers/FileBrowser;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public sM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 13
    .annotation runtime Labcd/ey;
        method = -0xb5fcff02d18035L
    .end annotation

    const-string v0, "Rated"

    const-string v1, "Rate"

    :try_start_4
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_14

    const-wide v3, 0x666c23dd69f88b05L  # 2.3914039641080346E185

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_14
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->U2(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_40

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_40

    .line 2
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5
    sget-object v6, Lcom/aide/ui/ServiceContainer;->P8:Ljava/lang/String;

    const-string v7, "rate"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lcom/aide/common/SocialDialog;->ef(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_45

    :cond_40
    if-eqz p3, :cond_45

    .line 6
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_46

    :cond_45
    :goto_45
    return-void

    :catchall_46
    move-exception v0

    .line 7
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_58

    const-wide v2, 0x666c23dd69f88b05L  # 2.3914039641080346E185

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v0
.end method

.method public setHasEmbeddedTabs()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x40176323d3d9b8b0L
    .end annotation

    const-wide v0, 0xb7f27bbe441f080L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->u7(Landroid/content/Context;)F

    move-result v2

    const v3, 0x44188000  # 610.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_22

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, v2}, Lcom/aide/common/AndroidHelper;->ei(Landroid/app/Activity;Z)V

    goto :goto_2c

    .line 3
    :cond_22
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->lg(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    .line 4
    invoke-static {p0, v2}, Lcom/aide/common/AndroidHelper;->ei(Landroid/app/Activity;Z)V

    .line 5
    :cond_2c
    :goto_2c
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->nw(Landroid/app/Activity;)V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method public sh()Lcom/aide/ui/AIDEEditorPager;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1e46b224d7369cdbL
    .end annotation

    const-wide v0, 0x2d678c70cd713fd9L  # 5.7801129934065475E-90

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800f1

    .line 1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/AIDEEditorPager;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public vJ()Lcom/aide/common/KeyStrokeDetector;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x1770a0486ebf69f7L
    .end annotation

    const-wide v0, -0x1e6c06d89b7e4d4dL  # -1.1232245367419307E162

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->fY:Lcom/aide/common/KeyStrokeDetector;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public w9()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x528ec87ff2780135L
    .end annotation

    const-wide v0, 0x14018d5f93c14457L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->k2:Lcom/aide/common/ProgressDialogHandler;

    invoke-virtual {v2}, Lcom/aide/common/ProgressDialogHandler;->v5()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public wc()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0xe5b21055c0881dL
    .end annotation

    const-wide v0, -0x10f11eb74dda9da3L  # -9.144169379434885E226

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->kf:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public x9(Z)Ljava/lang/String;
    .registers 11
    .annotation runtime Labcd/ey;
        method = 0x204234daf013eec5L
    .end annotation

    const-string v0, "last_seen_version"

    const-string v1, ""

    const-wide v2, 0x29653ef2f171307L

    :try_start_9
    sget-boolean v4, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v4, :cond_10

    invoke-static {v2, v3, p0, p1}, Labcd/iy;->Ws(JLjava/lang/Object;Z)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_57

    :cond_10
    const/4 v4, 0x0

    .line 1
    :try_start_11
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2
    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ro()Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_35

    .line 4
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    .line 5
    :cond_2b
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 6
    invoke-interface {v5, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_35
    if-eqz v7, :cond_51

    .line 8
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_51

    .line 9
    :cond_3e
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 10
    iget-boolean p1, p0, Lcom/aide/ui/MainActivity;->n5:Z

    if-eqz p1, :cond_49

    return-object v4

    :cond_49
    return-object v1

    .line 11
    :cond_4a
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_4e
    .catchall {:try_start_11 .. :try_end_4e} :catchall_52

    if-nez p1, :cond_51

    return-object v6

    :cond_51
    :goto_51
    return-object v4

    :catchall_52
    move-exception v0

    .line 12
    :try_start_53
    invoke-static {v0}, Lcom/aide/common/AppLog;->v5(Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    return-object v4

    :catchall_57
    move-exception v0

    .line 13
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_64

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    throw v0
.end method

.method public yO()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x3e6a2b0679a52adcL
    .end annotation

    const-wide v0, 0x1281272057394920L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->pN()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public yS(ZLjava/lang/String;Lcom/aide/ui/trainer/c$j;)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = -0xd0ab48176a2f9b4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v0, :cond_14

    const-wide v1, -0x1d454eea7d8a5ef8L

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/aide/ui/MainActivity;->Gj:Z

    if-eqz p1, :cond_1d

    .line 2
    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->Ws(Z)V

    goto :goto_42

    .line 3
    :cond_1d
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/services/OpenFileService;->u7()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getFileBrowserService()Lcom/aide/ui/services/FileBrowserService;

    move-result-object v2

    invoke-static {v1}, Lcom/aide/ui/util/FileSystem;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/aide/ui/services/FileBrowserService;->Hw(Ljava/lang/String;)V

    goto :goto_42

    .line 5
    :cond_33
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getFileBrowserService()Lcom/aide/ui/services/FileBrowserService;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getFileBrowserService()Lcom/aide/ui/services/FileBrowserService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/FileBrowserService;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aide/ui/services/FileBrowserService;->Hw(Ljava/lang/String;)V

    .line 6
    :goto_42
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/aide/ui/services/OpenFileService;->KD(ZZ)V

    if-eqz p2, :cond_53

    .line 7
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/mf;->kQ(Ljava/lang/String;)V

    goto :goto_5c

    :cond_53
    if-eqz p3, :cond_5c

    .line 8
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v0

    invoke-virtual {v0, p3}, Labcd/mf;->yO(Lcom/aide/ui/trainer/c$j;)V

    .line 9
    :cond_5c
    :goto_5c
    invoke-static {p1}, Lcom/aide/ui/ServiceContainer;->j6(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->recreate()V
    :try_end_62
    .catchall {:try_start_0 .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception v0

    .line 11
    sget-boolean v1, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v1, :cond_79

    const-wide v2, -0x1d454eea7d8a5ef8L

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    throw v0
.end method

.method public ys()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0xb1fbf4ca32a050L
    .end annotation

    const-wide v0, 0x10a3e41319759a90L  # 1.639940504552641E-228

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, -0x1

    .line 1
    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->IS(I)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public zh()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0xd3ab6ceb5c17ba8L
    .end annotation

    const-wide v0, -0x1af038f0f11fff60L  # -6.43855156523886E178

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->pN:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->yO()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->zh:Lcom/aide/ui/w;

    invoke-virtual {v2}, Lcom/aide/ui/w;->u7()V

    goto :goto_1d

    .line 3
    :cond_18
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->w9:Lcom/aide/ui/l;

    invoke-virtual {v2}, Lcom/aide/ui/l;->Hw()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :goto_1d
    return-void

    :catchall_1e
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/MainActivity;->oy:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method
