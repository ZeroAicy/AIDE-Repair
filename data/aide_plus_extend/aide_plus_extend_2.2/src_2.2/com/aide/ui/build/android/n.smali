.class public Lcom/aide/ui/build/android/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Labcd/cy;
    clazz = 0xd9b2feebc3101dbL
    container = 0xd9b2feebc3101dbL
    user = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/build/android/n$e;,
        Lcom/aide/ui/build/android/n$d;,
        Lcom/aide/ui/build/android/n$c;,
        Lcom/aide/ui/build/android/n$b;,
        Lcom/aide/ui/build/android/n$a;
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
.field private DW:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;
    .annotation runtime Labcd/dy;
        field = 0x5afeb1cbe50ec4d3L
    .end annotation
.end field

.field private FH:Ljava/util/Queue;
    .annotation runtime Labcd/dy;
        field = 0x3613fb84a77d4314L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Landroid/content/ServiceConnection;
    .annotation runtime Labcd/dy;
        field = -0x1cd7c370c702103L
    .end annotation
.end field

.field private j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    .annotation runtime Labcd/dy;
        field = 0x18b43f84e86b0381L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/build/android/n;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x2bdf9b06654c7400L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x6a99a03defbf6a79L  # 3.2137859751339224E205

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/n;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/build/android/n;->FH:Ljava/util/Queue;

    .line 3
    new-instance v3, Lcom/aide/ui/build/android/n$a;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/android/n$a;-><init>(Lcom/aide/ui/build/android/n;)V

    iput-object v3, p0, Lcom/aide/ui/build/android/n;->Hw:Landroid/content/ServiceConnection;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/n;->Zo:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/build/android/n;Lcom/aide/ui/build/packagingservice/IExternalPackagingService;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;
    .registers 2
    .annotation runtime Labcd/ey;
        method = 0xb924562cd85720dL
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/aide/ui/build/android/n;->DW:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    return-object p1
.end method

.method static synthetic FH(Lcom/aide/ui/build/android/n;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x1f30094662939b0cL
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/build/android/n;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    return-object p0
.end method

.method static synthetic Hw(Lcom/aide/ui/build/android/n;)Ljava/util/Queue;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0xcfdf396212afa8fL
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/build/android/n;->FH:Ljava/util/Queue;

    return-object p0
.end method

.method private J0()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x427939e0bf253e8fL
    .end annotation

    const-wide v0, 0x25c187b62287d420L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/n;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Lcom/aide/ui/build/android/n$b;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/android/n$b;-><init>(Lcom/aide/ui/build/android/n;)V

    invoke-static {v2}, Lcom/aide/ui/ServiceContainer;->aj(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/build/android/n;->Zo:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method static synthetic Zo(Lcom/aide/ui/build/android/n;)V
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x178c795f2453ddf1L
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/aide/ui/build/android/n;->J0()V

    return-void
.end method

.method private gn(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x574b70080e3b480L
    .end annotation

    const-wide v0, -0xaaffbe0568c593L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/n;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Lcom/aide/ui/build/android/n$c;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/build/android/n$c;-><init>(Lcom/aide/ui/build/android/n;Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/n;->Zo:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/n;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0xd6cad814792f6f9L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/build/android/n;->DW:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    return-object p0
.end method

.method private u7(Ljava/lang/Runnable;)V
    .registers 8
    .annotation runtime Labcd/ey;
        method = -0x28174faf4ecaf08L
    .end annotation

    const-wide v0, -0x19e31894ebf00a91L  # -7.676000333066158E183

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/n;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/n;->DW:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    if-nez v2, :cond_34

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;

    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getExternalPackagingServiceClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/aide/ui/build/android/n;->Hw:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "Could not bind to service"

    .line 3
    invoke-static {v2}, Lcom/aide/common/AppLog;->DW(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_2e
    iget-object v2, p0, Lcom/aide/ui/build/android/n;->FH:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 5
    :cond_34
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_38

    :goto_37
    return-void

    :catchall_38
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/build/android/n;->Zo:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v2
.end method

.method static synthetic v5(Lcom/aide/ui/build/android/n;)Landroid/content/ServiceConnection;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x540e2a10bccd870L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/build/android/n;->Hw:Landroid/content/ServiceConnection;

    return-object p0
.end method


# virtual methods
.method public EQ()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x3ddfd43c8d48a400L
    .end annotation

    const-wide v0, 0x21f454d13b0278fdL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/n;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_18

    .line 1
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/build/android/n;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;->vJ(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13
    .catchall {:try_start_c .. :try_end_12} :catchall_18

    goto :goto_17

    :catch_13
    move-exception v2

    .line 2
    :try_start_14
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    :goto_17
    return-void

    :catchall_18
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/build/android/n;->Zo:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public VH(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 52
    .annotation runtime Labcd/ey;
        method = 0x2e6380e185c7e00bL
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

    const-wide v9, -0x6a391b45ea1b8b94L  # -9.127344927042216E-204

    :try_start_2f
    sget-boolean v0, Lcom/aide/ui/build/android/n;->v5:Z

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
    new-instance v0, Lcom/aide/ui/build/android/n$d;
    :try_end_69
    .catchall {:try_start_2f .. :try_end_69} :catchall_9b

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

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

    :try_start_8c
    invoke-direct/range {v1 .. v18}, Lcom/aide/ui/build/android/n$d;-><init>(Lcom/aide/ui/build/android/n;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_97

    move-object/from16 v1, p0

    :try_start_91
    invoke-direct {v1, v0}, Lcom/aide/ui/build/android/n;->u7(Ljava/lang/Runnable;)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    return-void

    :catchall_95
    move-exception v0

    goto :goto_9d

    :catchall_97
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_9d

    :catchall_9b
    move-exception v0

    move-object v1, v15

    .line 2
    :goto_9d
    sget-boolean v2, Lcom/aide/ui/build/android/n;->Zo:Z

    if-eqz v2, :cond_e2

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v34

    aput-object p2, v2, v33

    aput-object p3, v2, v32

    aput-object p4, v2, v31

    aput-object p5, v2, v30

    aput-object p6, v2, v29

    aput-object p7, v2, v28

    aput-object p8, v2, v27

    aput-object p9, v2, v26

    aput-object p10, v2, v25

    aput-object p11, v2, v24

    aput-object p12, v2, v23

    aput-object p13, v2, v22

    new-instance v3, Ljava/lang/Boolean;

    move/from16 v4, p14

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v21

    new-instance v3, Ljava/lang/Boolean;

    move/from16 v4, p15

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v20

    new-instance v3, Ljava/lang/Boolean;

    move/from16 v4, p16

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v19

    const-wide v3, -0x6a391b45ea1b8b94L  # -9.127344927042216E-204

    invoke-static {v0, v3, v4, v1, v2}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_e2
    throw v0
.end method

.method public tp(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x24391b9cebd4236bL
    .end annotation

    const-wide v0, 0x19b46987f532d070L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/n;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/build/android/n;->gn(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/build/android/n;->j6:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    .line 2
    iget-object v3, p0, Lcom/aide/ui/build/android/n;->DW:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_21

    if-eqz v3, :cond_20

    .line 3
    :try_start_16
    iget-object v3, p0, Lcom/aide/ui/build/android/n;->DW:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    invoke-interface {v3, v2}, Lcom/aide/ui/build/packagingservice/IExternalPackagingService;->yF(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catchall {:try_start_16 .. :try_end_1b} :catchall_21

    goto :goto_20

    :catch_1c
    move-exception v2

    .line 4
    :try_start_1d
    invoke-static {v2}, Lcom/aide/common/AppLog;->v5(Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    :cond_20
    :goto_20
    return-void

    :catchall_21
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/build/android/n;->Zo:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public we()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x83bab5d95b5a28fL
    .end annotation

    const-wide v0, -0x1cf459e3f1f7a734L  # -1.30432224746631E169

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/n;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Lcom/aide/ui/build/android/n$e;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/android/n$e;-><init>(Lcom/aide/ui/build/android/n;)V

    invoke-direct {p0, v2}, Lcom/aide/ui/build/android/n;->u7(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/build/android/n;->Zo:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
