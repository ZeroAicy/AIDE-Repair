.class public Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Labcd/cy;
    clazz = -0x1b2268f741ca0c85L
    container = -0x1b2268f741ca0c85L
    user = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/packagingservice/ExternalPackagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExternalPackagingServiceWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$b;,
        Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$a;,
        Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$Task;,
        Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$c;,
        Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$e;
    }
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
.field private DW:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Labcd/dy;
        field = -0x6f84f2d3665698bL
    .end annotation
.end field

.field private FH:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$e;
    .annotation runtime Labcd/dy;
        field = -0x1f440c778cc1c74cL
    .end annotation
.end field

.field protected Hw:Ljava/util/List;
    .annotation runtime Labcd/dy;
        field = 0xca4bcc485946548L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$Task;",
            ">;"
        }
    .end annotation
.end field

.field private j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    .annotation runtime Labcd/dy;
        field = -0xa56edcb5bedd6c0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService;)V
    .registers 14
    .annotation runtime Labcd/ey;
        method = -0x5ea290cbe60587dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xa91921d51ec2378L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$a;

    invoke-direct {v11, p0, p1}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$a;-><init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;Lcom/aide/ui/build/packagingservice/ExternalPackagingService;)V

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->DW:Ljava/util/concurrent/ExecutorService;
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v3

    .line 3
    sget-boolean v4, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Zo:Z

    if-eqz v4, :cond_31

    invoke-static {v3, v1, v2, v0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;)V
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x5de60c47c8a042dL
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->VH()V

    return-void
.end method

.method static synthetic FH(Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;)V
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x4b46a7736f00638L
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->u7()V

    return-void
.end method

.method static synthetic Hw(Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .annotation runtime Labcd/ey;
        method = -0x1a80e26e19f46581L
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->gn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private VH()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x3e358c3b68676a27L
    .end annotation

    const-wide v0, 0x5b419fa81bee4ecL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1f

    if-eqz v2, :cond_1e

    .line 2
    :try_start_10
    iget-object v2, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;->vJ(Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17
    .catchall {:try_start_10 .. :try_end_16} :catchall_1f

    goto :goto_1e

    :catch_17
    move-exception v2

    const/4 v3, 0x0

    .line 3
    :try_start_19
    iput-object v3, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    .line 4
    invoke-static {v2}, Lcom/aide/common/AppLog;->v5(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1f

    :cond_1e
    :goto_1e
    return-void

    :catchall_1f
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Zo:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method private gn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x54d1a5d0a48509a9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->v5:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x5b5e70f526c06f8L  # 3.77067659381857E-281

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p2}, Lcom/aide/common/AppLog;->v5(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_21

    if-eqz v0, :cond_20

    .line 3
    :try_start_13
    iget-object v0, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    invoke-interface {v0, p1}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;->E6(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19
    .catchall {:try_start_13 .. :try_end_18} :catchall_21

    goto :goto_20

    :catch_19
    move-exception v0

    const/4 v1, 0x0

    .line 4
    :try_start_1b
    iput-object v1, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    .line 5
    invoke-static {v0}, Lcom/aide/common/AppLog;->v5(Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_21

    :cond_20
    :goto_20
    return-void

    :catchall_21
    move-exception v0

    .line 6
    sget-boolean v1, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Zo:Z

    if-eqz v1, :cond_32

    const-wide v2, 0x5b5e70f526c06f8L  # 3.77067659381857E-281

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    .registers 2
    .annotation runtime Labcd/ey;
        method = -0x11852114c260dfdbL
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    return-object p1
.end method

.method private tp(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x4947a70ee134d4d9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->v5:Z

    if-eqz v0, :cond_11

    const-wide v0, -0x260683a7aea4dbd0L  # -2.695598249380004E125

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, p1, v2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    iget-object v0, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_23

    if-eqz v0, :cond_22

    .line 2
    :try_start_15
    iget-object v0, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    invoke-interface {v0, p1, p2}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;->jD(Ljava/lang/String;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_23

    goto :goto_22

    :catch_1b
    move-exception v0

    const/4 v1, 0x0

    .line 3
    :try_start_1d
    iput-object v1, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    .line 4
    invoke-static {v0}, Lcom/aide/common/AppLog;->v5(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_23

    :cond_22
    :goto_22
    return-void

    :catchall_23
    move-exception v0

    .line 5
    sget-boolean v1, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Zo:Z

    if-eqz v1, :cond_38

    const-wide v2, -0x260683a7aea4dbd0L  # -2.695598249380004E125

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method private u7()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x5ea10a8b957f3b27L
    .end annotation

    const-wide v0, 0x30681240feb31cc8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1e

    if-eqz v2, :cond_1d

    .line 2
    :try_start_10
    iget-object v2, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    invoke-interface {v2}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;->J0()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16
    .catchall {:try_start_10 .. :try_end_15} :catchall_1e

    goto :goto_1d

    :catch_16
    move-exception v2

    const/4 v3, 0x0

    .line 3
    :try_start_18
    iput-object v3, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    .line 4
    invoke-static {v2}, Lcom/aide/common/AppLog;->v5(Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1e

    :cond_1d
    :goto_1d
    return-void

    :catchall_1e
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Zo:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public static synthetic v5(Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;Ljava/lang/String;I)V
    .registers 3
    .annotation runtime Labcd/ey;
        method = 0x380211f8117f79bdL
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->tp(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public EQ(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xddba860164b4350L
    .end annotation

    const-wide v0, -0x2d656c4d4594abbfL  # -8.459092967526236E89

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->DW:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$b;

    invoke-direct {v3, p0, p1}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$b;-><init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Zo:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public J0()V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x197a2ca0b12ec7c0L
    .end annotation

    const-wide v0, 0x40e72254df290421L  # 47378.6522412377

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->FH:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$e;

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    .line 2
    iget-object v2, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->FH:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$e;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 3
    iput-object v3, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->FH:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$e;

    .line 4
    :cond_19
    new-instance v2, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$e;

    new-instance v4, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$c;

    iget-object v5, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Hw:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$c;-><init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;Ljava/util/List;)V

    invoke-direct {v2, p0, v4}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$e;-><init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$c;)V

    iput-object v2, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->FH:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$e;

    .line 5
    iput-object v3, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Hw:Ljava/util/List;

    .line 6
    iget-object v3, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->DW:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v2

    .line 7
    sget-boolean v3, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Zo:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public Zo(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 53
    .annotation runtime Labcd/ey;
        method = 0x4be5fa5d8f1b4c00L
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p14

    move/from16 v13, p15

    move/from16 v12, p16

    const/16 v19, 0xf

    const/16 v20, 0xe

    const/16 v21, 0xd

    const/16 v22, 0xc

    const/16 v23, 0xb

    const/16 v24, 0xa

    const/16 v25, 0x9

    const/16 v26, 0x8

    const/16 v27, 0x7

    const/16 v28, 0x6

    const/16 v29, 0x5

    const/16 v30, 0x4

    const/16 v31, 0x3

    const/16 v32, 0x2

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v11, 0x10

    const-wide v9, 0x1e0bf1610e5b59f3L  # 6.065458694146928E-164

    :try_start_2f
    sget-boolean v0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->v5:Z

    if-eqz v0, :cond_67

    new-array v0, v11, [Ljava/lang/Object;

    aput-object p1, v0, v34

    aput-object p2, v0, v33

    aput-object p3, v0, v32

    aput-object p4, v0, v31

    aput-object p5, v0, v30

    aput-object p6, v0, v29

    aput-object p7, v0, v28

    aput-object p8, v0, v27

    aput-object p9, v0, v26

    aput-object p10, v0, v25

    aput-object p11, v0, v24

    aput-object p12, v0, v23

    aput-object p13, v0, v22

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v14}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v1, v0, v21

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v13}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v1, v0, v20

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v12}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v1, v0, v19

    invoke-static {v9, v10, v15, v0}, Labcd/iy;->QX(JLjava/lang/Object;[Ljava/lang/Object;)V

    .line 1
    :cond_67
    iget-object v0, v15, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Hw:Ljava/util/List;

    if-nez v0, :cond_72

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Hw:Ljava/util/List;

    .line 2
    :cond_72
    iget-object v0, v15, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Hw:Ljava/util/List;

    new-instance v8, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$Task;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v35, v0

    move-object v0, v8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    invoke-direct/range {v1 .. v18}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker$Task;-><init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v1, v35

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a4
    .catchall {:try_start_2f .. :try_end_a4} :catchall_a5

    return-void

    :catchall_a5
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Zo:Z

    if-eqz v1, :cond_ee

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v34

    aput-object p2, v1, v33

    aput-object p3, v1, v32

    aput-object p4, v1, v31

    aput-object p5, v1, v30

    aput-object p6, v1, v29

    aput-object p7, v1, v28

    aput-object p8, v1, v27

    aput-object p9, v1, v26

    aput-object p10, v1, v25

    aput-object p11, v1, v24

    aput-object p12, v1, v23

    aput-object p13, v1, v22

    new-instance v2, Ljava/lang/Boolean;

    move/from16 v3, p14

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v21

    new-instance v2, Ljava/lang/Boolean;

    move/from16 v3, p15

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v20

    new-instance v2, Ljava/lang/Boolean;

    move/from16 v3, p16

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v19

    const-wide v3, 0x1e0bf1610e5b59f3L  # 6.065458694146928E-164

    move-object/from16 v2, p0

    invoke-static {v0, v3, v4, v2, v1}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_f0

    :cond_ee
    move-object/from16 v2, p0

    :goto_f0
    throw v0
.end method

.method public we()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x14f812f462fa9f1L
    .end annotation

    const-wide v0, 0x29a14f44eb559000L  # 3.685188742506245E-108

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->DW:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->Zo:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method
