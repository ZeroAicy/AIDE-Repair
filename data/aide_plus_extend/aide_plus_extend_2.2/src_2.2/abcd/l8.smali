.class public Labcd/l8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Labcd/cy;
    clazz = -0x37023090e6abeb0L
    container = -0x37023090e6abeb0L
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
.field private DW:Ljava/util/List;
    .annotation runtime Labcd/dy;
        field = -0x2e4afadbd66c71fcL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/m8;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Landroid/app/Activity;
    .annotation runtime Labcd/dy;
        field = 0xfcd0da0e9f43c7dL
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/dy;
        field = 0xee9aab569640ac0L
    .end annotation
.end field

.field private j6:Ljava/util/HashMap;
    .annotation runtime Labcd/dy;
        field = 0x4b070c36e52b6cfdL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Labcd/o8$a;",
            "Labcd/n8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Labcd/l8;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x14ced2635673ab9bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2795e5bae052cc63L  # -8.227963891284245E117

    :try_start_6
    sget-boolean v3, Labcd/l8;->v5:Z

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

    .line 2
    sget-boolean v4, Labcd/l8;->Zo:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private Zo()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x622e3cd208bb5b5L
    .end annotation

    :try_start_5
    const/4 v0, 0x0

    return v0

    const-wide v0, -0x226d4bcfbac2c4ebL  # -5.702026628460882E142

    sget-boolean v2, Labcd/l8;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return v0

    :catchall_1f
    move-exception v2

    sget-boolean v3, Labcd/l8;->Zo:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x4d5106af1ca8919fL
    .end annotation

    const-wide v0, 0x1523fe0e2e6dfe7fL  # 7.783913559273489E-207

    :try_start_5
    sget-boolean v2, Labcd/l8;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    .line 1
    iput-boolean v2, p0, Labcd/l8;->Hw:Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    .line 2
    sget-boolean v3, Labcd/l8;->Zo:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public FH()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x225f943233998dabL
    .end annotation

    const-wide v0, -0x5ab8e96ac1176f5L  # -1.855414222660459E281

    :try_start_5
    sget-boolean v2, Labcd/l8;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Labcd/l8;->j6:Ljava/util/HashMap;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Labcd/l8;->DW:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->gn()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Labcd/l8;->FH:Landroid/app/Activity;
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    .line 4
    sget-boolean v3, Labcd/l8;->Zo:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public Hw()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0xdfef3f542201d84L
    .end annotation

    const-wide v0, 0x3e55c734fd55b544L  # 2.0282484876887727E-8

    :try_start_5
    sget-boolean v2, Labcd/l8;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getLicenseService()Lcom/aide/ui/services/LicenseService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/LicenseService;->we()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0}, Labcd/l8;->Zo()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_1c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_26

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/l8;->Zo:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public VH()Z
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x54ff03a20d2d3L
    .end annotation

    const-wide v0, -0x7260170b7b665173L  # -4.673368838803206E-243

    :try_start_5
    sget-boolean v2, Labcd/l8;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/l8;->Hw()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    return v3

    .line 2
    :cond_14
    iget-object v2, p0, Labcd/l8;->j6:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/o8$a;

    .line 3
    iget-object v5, p0, Labcd/l8;->j6:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/n8;

    invoke-virtual {v4}, Labcd/n8;->j6()Z

    move-result v4
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_3b

    if-eqz v4, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_3a
    return v3

    :catchall_3b
    move-exception v2

    .line 4
    sget-boolean v3, Labcd/l8;->Zo:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_43
    goto :goto_45

    :goto_44
    throw v2

    :goto_45
    goto :goto_44
.end method

.method public gn(Labcd/o8;)V
    .registers 11
    .annotation runtime Labcd/ey;
        method = -0x375aaf1c109af50L
    .end annotation

    const-wide v0, 0x3c35207286bf6430L  # 1.1452832786706955E-18

    :try_start_5
    sget-boolean v2, Labcd/l8;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/l8;->Hw()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, p0, Labcd/l8;->Hw:Z

    .line 3
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getLicenseService()Lcom/aide/ui/services/LicenseService;

    move-result-object v3

    iget-object v4, p0, Labcd/l8;->FH:Landroid/app/Activity;

    invoke-interface {p1}, Labcd/o8;->j6()I

    move-result v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "run_command_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Labcd/o8;->VH()Labcd/o8$a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/aide/ui/services/LicenseService;->ro(Landroid/app/Activity;ILjava/lang/String;ZZ)V
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3e

    :cond_3d
    return-void

    :catchall_3e
    move-exception v2

    .line 4
    sget-boolean v3, Labcd/l8;->Zo:Z

    if-eqz v3, :cond_46

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v2
.end method

.method public j6(Landroid/view/ViewGroup;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x4056debe9348f03bL
    .end annotation

    const-wide v0, 0x25a83275c81c0fa5L

    :try_start_5
    sget-boolean v2, Labcd/l8;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/l8;->Hw()Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_13

    if-nez p1, :cond_12

    :cond_12
    return-void

    :catchall_13
    move-exception v2

    .line 2
    sget-boolean v3, Labcd/l8;->Zo:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public u7(Z)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x742e94939044bf1L
    .end annotation

    const-wide v0, -0x55a84691b4255c2fL

    :try_start_5
    sget-boolean v2, Labcd/l8;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->Ws(JLjava/lang/Object;Z)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/l8;->Hw()Z

    move-result v2

    if-nez v2, :cond_13

    return-void

    .line 2
    :cond_13
    iget-object v2, p0, Labcd/l8;->DW:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/m8;

    if-eqz p1, :cond_2f

    const/4 v4, 0x1

    .line 3
    invoke-virtual {v3, v4}, Labcd/m8;->DW(Z)V

    .line 4
    invoke-virtual {v3}, Labcd/m8;->FH()V

    goto :goto_19

    .line 5
    :cond_2f
    invoke-virtual {v3}, Labcd/m8;->j6()V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_34

    goto :goto_19

    :cond_33
    return-void

    :catchall_34
    move-exception v2

    .line 6
    sget-boolean v3, Labcd/l8;->Zo:Z

    if-eqz v3, :cond_41

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    goto :goto_43

    :goto_42
    throw v2

    :goto_43
    goto :goto_42
.end method

.method public v5()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x327b4651e1e42e25L
    .end annotation

    const-wide v0, 0x4f0141c92ad561bbL  # 3.811304634243804E72

    :try_start_5
    sget-boolean v2, Labcd/l8;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-boolean v0, p0, Labcd/l8;->Hw:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/l8;->Zo:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
