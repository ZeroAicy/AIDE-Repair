.class public Lcom/aide/ui/services/ProjectService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Labcd/cy;
    clazz = -0x6fdf4c80cc5fd710L
    container = -0x6fdf4c80cc5fd710L
    user = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/services/ProjectService$f;,
        Lcom/aide/ui/services/ProjectService$e;,
        Lcom/aide/ui/services/ProjectService$d;,
        Lcom/aide/ui/services/ProjectService$c;,
        Lcom/aide/ui/services/ProjectService$b;,
        Lcom/aide/ui/services/ProjectService$a;
    }
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
.field protected Hw:Ljava/util/List;
    .annotation runtime Labcd/dy;
        field = -0x15e3336920e3058bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected currentAppHome:Ljava/lang/String;
    .annotation runtime Labcd/dy;
        field = 0x4d26a3653b1545e3L
    .end annotation
.end field

.field protected libraryMapping:Ljava/util/Map;
    .annotation runtime Labcd/dy;
        field = 0x38076f152955c2ebL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected pojectSupport:Lcom/aide/ui/services/ProjectSupport;
    .annotation runtime Labcd/dy;
        field = -0x26f601a8db602f34L
    .end annotation
.end field

.field protected v5:Z
    .annotation runtime Labcd/dy;
        field = 0x25ed38aefe362500L
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/services/ProjectService;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x7d94654c92691f9L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x210f2e082a337edbL  # -2.150743950848695E149

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->Zo:Z

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

    sget-boolean v4, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static synthetic DW(Lcom/aide/ui/services/ProjectService;)V
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x15e657cbeadcfbccL
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->init()V

    return-void
.end method

.method public static synthetic FH(Lcom/aide/ui/services/ProjectService;)V
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x3a4d08055d5f2afL
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->jJ()V

    return-void
.end method

.method private FN(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x11ab340be0737213L
    .end annotation

    const-wide v0, 0xc50e0b23f972f9dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-eqz v2, :cond_39

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ProjectService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BuildVariant_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3a

    :cond_39
    return-void

    :catchall_3a
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_42

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v2
.end method

.method public static synthetic Hw(Lcom/aide/ui/services/ProjectService;)Lcom/aide/ui/services/ProjectSupport;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0xea977522ac048f0L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    return-object p0
.end method

.method public static KD(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x7143bb59fd2ceda8L
    .end annotation

    const-wide v0, 0x51e0901954bcd448L  # 2.574096352704411E86

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_10

    return-object v2

    :cond_10
    const/4 v3, -0x1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_46

    const v5, -0x7078ca1d

    const-string v6, "release"

    const-string v7, "debug"

    if-eq v4, v5, :cond_39

    const v5, 0x5b09653

    if-eq v4, v5, :cond_31

    const v5, 0x41012807

    if-eq v4, v5, :cond_29

    goto :goto_42

    :cond_29
    :try_start_29
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const/4 v3, 0x0

    goto :goto_42

    :cond_31
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const/4 v3, 0x1

    goto :goto_42

    :cond_39
    const-string v4, "debug-aide"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_46

    if-eqz p0, :cond_42

    const/4 v3, 0x2

    :cond_42
    :goto_42
    if-eqz v3, :cond_45

    return-object v7

    :cond_45
    return-object v6

    :catchall_46
    move-exception v3

    .line 2
    sget-boolean v4, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v4, :cond_4e

    invoke-static {v3, v0, v1, v2, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v3
.end method

.method private getProjectSupport(Ljava/lang/String;)Lcom/aide/ui/services/ProjectSupport;
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x53a0b08e67eaab53L
    .end annotation

    const-wide v0, 0x15146cea3ee81c73L  # 3.9762584999681396E-207

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    if-nez p1, :cond_10

    return-object v2

    .line 1
    :cond_10
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectSupports()[Lcom/aide/ui/services/ProjectSupport;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_24

    aget-object v6, v3, v5

    .line 2
    invoke-interface {v6, p1}, Lcom/aide/ui/services/ProjectSupport;->isSupport(Ljava/lang/String;)Z

    move-result v7
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_25

    if-eqz v7, :cond_21

    return-object v6

    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_24
    return-object v2

    :catchall_25
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method private static j3(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x46f545f2ad9d40L
    .end annotation

    const-wide v0, 0x359dd05b556d85e0L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, " "

    .line 1
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2
    array-length v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1c

    array-length v4, v3

    sub-int/2addr v4, v5

    aget-object p0, v3, v4
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1d

    return-object p0

    :cond_1c
    return-object v2

    :catchall_1d
    move-exception v3

    .line 3
    sget-boolean v4, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v4, :cond_25

    invoke-static {v3, v0, v1, v2, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method public static synthetic j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x10d4082451df0d5L
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/aide/ui/services/ProjectService;->j3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private saveCurrentAppHome(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x57cc6cb259d6d020L
    .end annotation

    const-wide v0, -0x30550dad60607a40L  # -6.094140649736464E75

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iput-object p1, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ProjectService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "CurrentAppHome"

    .line 4
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method private ye()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x6a027f91fe3e1ef9L
    .end annotation

    const-wide v0, -0x1dc7d411d0b29609L  # -1.391948273898552E165

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    .line 1
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method


# virtual methods
.method public EQ()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x28cd19ae1c18af4L
    .end annotation

    const-wide v0, 0x3c346145a710154L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->u7()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2}, Lcom/aide/ui/services/ProjectSupport;->gW()Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_22

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public Ev()Z
    .registers 8
    .annotation runtime Labcd/ey;
        method = -0x5ad6aa0ed93ca5L
    .end annotation

    const-wide v0, 0xc0fbbc845b3804bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/OpenFileService;->u7()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    return v3

    .line 2
    :cond_18
    invoke-virtual {p0, v2}, Lcom/aide/ui/services/ProjectService;->SI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1f

    return v3

    .line 3
    :cond_1f
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v3}, Lcom/aide/ui/services/OpenFileService;->KD(ZZ)V

    .line 4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditorPager;->Eq()V

    .line 5
    invoke-direct {p0, v4}, Lcom/aide/ui/services/ProjectService;->getProjectSupport(Ljava/lang/String;)Lcom/aide/ui/services/ProjectSupport;

    move-result-object v3

    .line 6
    invoke-interface {v3, v2}, Lcom/aide/ui/services/ProjectSupport;->ei(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3a

    return v6

    :catchall_3a
    move-exception v2

    .line 7
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_42

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_42
    throw v2
.end method

.method public J0()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x3346bba54027484L
    .end annotation

    const-wide v0, -0x3501923c6bc923a4L  # -1.8215604498656081E53

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->u7()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2}, Lcom/aide/ui/services/ProjectSupport;->lg()Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_22

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public J8()Z
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0xaf98aea6a78f12dL
    .end annotation

    const-wide v0, 0x30b868c026234eddL  # 5.396526328436546E-74

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/OpenFileService;->u7()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    return v3

    .line 2
    :cond_18
    invoke-virtual {p0, v2}, Lcom/aide/ui/services/ProjectService;->SI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1f

    return v3

    .line 3
    :cond_1f
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->ro()Labcd/mf;

    move-result-object v5

    invoke-virtual {v5, v2}, Labcd/mf;->CU(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    return v3

    .line 4
    :cond_30
    invoke-direct {p0, v4}, Lcom/aide/ui/services/ProjectService;->getProjectSupport(Ljava/lang/String;)Lcom/aide/ui/services/ProjectSupport;

    move-result-object v3

    .line 5
    invoke-interface {v3, v2}, Lcom/aide/ui/services/ProjectSupport;->u7(Ljava/lang/String;)Z

    move-result v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    return v0

    :catchall_39
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v2
.end method

.method public Mr()Ljava/util/List;
    .registers 11
    .annotation runtime Labcd/ey;
        method = -0x3302b4426d03495dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "debug-aide"

    const-string v1, "debug"

    const-string v2, "release"

    const-string v3, " "

    const-wide v4, -0x10a40d96fa40ed8dL  # -2.6481989248864862E228

    :try_start_d
    sget-boolean v6, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v6, :cond_14

    invoke-static {v4, v5, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_14
    iget-object v6, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-nez v6, :cond_1a

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_1a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v7, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/aide/ui/services/ProjectSupport;->getProductFlavors(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_84

    .line 7
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_84

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catchall {:try_start_d .. :try_end_83} :catchall_85

    goto :goto_38

    :cond_84
    return-object v6

    :catchall_85
    move-exception v0

    .line 11
    sget-boolean v1, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v1, :cond_8d

    invoke-static {v0, v4, v5, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8d
    goto :goto_8f

    :goto_8e
    throw v0

    :goto_8f
    goto :goto_8e
.end method

.method public Mz(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xfff53882e37bc00L
    .end annotation

    const-wide v0, 0x425df0d0e7fc7e40L  # 5.1437709720197266E11

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/services/ProjectService;->getProjectSupport(Ljava/lang/String;)Lcom/aide/ui/services/ProjectSupport;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public OW()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x5402b373a873415bL
    .end annotation

    const-wide v0, 0x60eac31aa76fb905L  # 7.348663049106342E158

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->nw()Lcom/aide/ui/trainer/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/b;->J8()V

    goto :goto_2a

    .line 3
    :cond_1a
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-eqz v2, :cond_2a

    .line 4
    iget-boolean v2, p0, Lcom/aide/ui/services/ProjectService;->v5:Z

    if-eqz v2, :cond_2a

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/aide/ui/services/ProjectService;->v5:Z

    .line 6
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2}, Lcom/aide/ui/services/ProjectSupport;->gn()V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    :cond_2a
    :goto_2a
    return-void

    :catchall_2b
    move-exception v2

    .line 7
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public P8()Ljava/util/List;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x1600c84187c2674cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0xcaa1216dcb0ea2cL  # -3.833204484024495E247

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/aide/ui/services/ProjectService;->libraryMapping:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    return-object v2

    :catchall_2e
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method public QX(Ljava/lang/String;Lcom/aide/common/ValueRunnable;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x10b0095acc74989bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/common/ValueRunnable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xc3b032bbd140f85L  # -4.695798879601314E249

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v0, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v0, p1, p2}, Lcom/aide/ui/services/ProjectSupport;->SI(Ljava/lang/String;Lcom/aide/common/ValueRunnable;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v1, :cond_23

    const-wide v2, -0xc3b032bbd140f85L  # -4.695798879601314E249

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

.method public SI(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x4ebed2580e66398L
    .end annotation

    const-wide v0, -0xc93a444c0af8578L  # -9.913957168417884E247

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->cb(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 2
    :goto_12
    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->Sf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 3
    invoke-direct {p0, p1}, Lcom/aide/ui/services/ProjectService;->getProjectSupport(Ljava/lang/String;)Lcom/aide/ui/services/ProjectSupport;

    move-result-object v2

    if-eqz v2, :cond_1f

    return-object p1

    .line 4
    :cond_1f
    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_26

    goto :goto_12

    :cond_24
    const/4 p1, 0x0

    return-object p1

    :catchall_26
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    goto :goto_30

    :goto_2f
    throw v2

    :goto_30
    goto :goto_2f
.end method

.method public Sf(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x2617de2774efb728L
    .end annotation

    const-wide v0, 0xfb25c72cd3800f8L  # 4.619794877764256E-233

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->aM(Ljava/lang/String;)Z

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

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public U2(Ljava/lang/String;)I
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x136f7e80572e75adL
    .end annotation

    const-wide v0, -0x1436783d5e599a3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->we(Ljava/lang/String;)I

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public VH(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x16ecb2b14b2c87e0L
    .end annotation

    const-wide v0, 0x6b5e5c691bac9c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0, p1}, Lcom/aide/ui/services/ProjectService;->Sf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 2
    invoke-virtual {p0, p1}, Lcom/aide/ui/services/ProjectService;->SI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 3
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const v4, 0x7f0d05d9

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/aide/ui/ServiceContainer;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f0d05d8

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v5

    invoke-static {v6, v7}, Lcom/aide/ui/ServiceContainer;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/ui/services/ProjectService$b;

    invoke-direct {v6, p0, v2, p1}, Lcom/aide/ui/services/ProjectService$b;-><init>(Lcom/aide/ui/services/ProjectService;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v3, v4, v5, v6, v2}, Lcom/aide/common/MessageBox;->rN(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    :cond_3b
    return-void

    :catchall_3c
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method public Ws()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x1b1865d211a57a68L
    .end annotation

    const-wide v0, -0xc895e325896e358L  # -1.582414408250763E248

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-eqz v2, :cond_46

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v2}, Lcom/aide/ui/services/ProjectService;->saveCurrentAppHome(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/aide/ui/services/ProjectService;->ye()V

    .line 4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->J0()Lcom/aide/ui/services/ErrorService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ErrorService;->aM()V

    .line 5
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/NavigateService;->Hw()V

    .line 6
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/OpenFileService;->Zo()V

    .line 7
    iput-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/services/ProjectService;->libraryMapping:Ljava/util/Map;

    .line 9
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getDebugger()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/debugger/Debugger;->v5()V

    .line 10
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->q7()V

    .line 11
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->jJ()V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    :cond_46
    return-void

    :catchall_47
    move-exception v2

    .line 12
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4f
    throw v2
.end method

.method public XG()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x8a83a3f2d3264cL
    .end annotation

    const-wide v0, -0x361c3210842feeecL  # -9.045067150319092E47

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2}, Lcom/aide/ui/services/ProjectSupport;->j6()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public XX(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x33877030200c2070L
    .end annotation

    const-wide v0, -0x2e900ccae7ff6a60L  # -1.9396352263400397E84

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    .line 1
    invoke-virtual {p0, p1, v2}, Lcom/aide/ui/services/ProjectService;->kQ(Ljava/lang/String;Z)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public Xa(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x11dc8bbea0f9300L
    .end annotation

    const-wide v0, -0x2aca7b16dba87480L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->J0(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->reloadingProject()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Zo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x2cbd7bffb81ff0adL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x36b0031bf6286c0dL  # 2.8047243466025356E-45

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v0, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v0, p1, p2}, Lcom/aide/ui/services/ProjectSupport;->P8(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v1, :cond_23

    const-wide v2, 0x36b0031bf6286c0dL  # 2.8047243466025356E-45

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

.method public a8(Ljava/lang/String;)I
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x16e8b114543023f0L
    .end annotation

    const-wide v0, 0x113a87fecc2dc300L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->rN(Ljava/lang/String;)I

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public aM()Ljava/util/List;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x3725a13a33924790L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x4cfe3116f78d25e0L  # -5.411180182454393E-63

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-nez v2, :cond_12

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_12
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/aide/ui/services/ProjectSupport;->getProductFlavors(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object v0

    :catchall_1d
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public aj(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x73828fba845eecbL
    .end annotation

    const-wide v0, 0x180411892617dbL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-nez v2, :cond_12

    const/4 p1, 0x0

    goto :goto_18

    :cond_12
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->sh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    :goto_18
    return-object p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public br()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x3f7fe848900339dL
    .end annotation

    const-wide v0, 0xb7b7e6686859333L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2}, Lcom/aide/ui/services/ProjectSupport;->Mr()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public buildProject(Z)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x3c1eda874bfef77fL
    .end annotation

    const-wide v0, 0x1fe04ececdfab8c1L  # 3.800920323134937E-155

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->Ws(JLjava/lang/Object;Z)V

    :cond_c
    if-eqz p1, :cond_11

    .line 1
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->wc()V

    .line 2
    :cond_11
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->J0()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lcom/aide/ui/services/ProjectService;->v5:Z

    .line 4
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->buildProject(Z)V

    goto :goto_29

    :cond_20
    if-eqz p1, :cond_29

    .line 5
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getEngineService()Lcom/aide/ui/services/EngineService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/EngineService;->vy()V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    :cond_29
    :goto_29
    return-void

    :catchall_2a
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_37

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public cn(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x3c1d6c23cf07aec0L
    .end annotation

    const-wide v0, -0x2f5129aaa41cedf0L  # -4.5705068069088495E80

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->libraryMapping:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    new-array p1, v2, [Ljava/lang/String;

    return-object p1

    .line 2
    :cond_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 3
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-object v3

    :catchall_24
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public dx()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x22b1656a75f91c93L
    .end annotation

    const-wide v0, 0x2b5ccb87f123030dL  # 8.228092787079575E-100

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->jJ()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public ef(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x3b4b9f530737e93L
    .end annotation

    const-wide v0, -0x25c06e70a2c022b3L  # -5.3423634861259166E126

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/services/ProjectService;->getProjectSupport(Ljava/lang/String;)Lcom/aide/ui/services/ProjectSupport;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 2
    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->j3(Ljava/lang/String;)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_19

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1

    :catchall_19
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public ei()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0xfb5abc544c3d39bL
    .end annotation

    const-wide v0, 0x34d8c42d42de8bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2}, Lcom/aide/ui/services/ProjectSupport;->getProjectAttributeHtmlString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    const-string v0, ""
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-object v0

    :catchall_1a
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public er()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1c1b19fe9a585fdfL
    .end annotation

    const-wide v0, -0x13e761664e4859d1L  # -5.180083510756148E212

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->lg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/services/ProjectService;->j3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public et(Ljava/util/List;Z)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x33649aa7712e506cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v0, :cond_11

    const-wide v0, -0xec59976aa065b74L

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, p0, p1, v2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    iget-object v0, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-eqz v0, :cond_1a

    .line 2
    iget-object v0, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v0, p1, p2}, Lcom/aide/ui/services/ProjectSupport;->cn(Ljava/util/List;Z)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    :cond_1a
    return-void

    :catchall_1b
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v1, :cond_30

    const-wide v2, -0xec59976aa065b74L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public g3(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x12d371d279ade6d5L
    .end annotation

    const-wide v0, 0xee030c387870c35L  # 4.972711236254367E-237

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->vy(Ljava/lang/String;)Z

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

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public getAndroidJarPath()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x123f39fcd5375b10L
    .end annotation

    const-wide v0, 0x3369f6d7699f4ee0L  # 5.0492426668199716E-61

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/AppPreferences;->getUserAndroidJar()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lcom/aide/ui/util/FileSystem;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    return-object v2

    .line 3
    :cond_17
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getAssetInstallationService()Lcom/aide/ui/services/AssetInstallationService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/AssetInstallationService;->Hw()Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public getBuildVariant()Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x211b4ad06ce6618bL
    .end annotation

    const-wide v0, 0x70a1f227539cafbL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->lg()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1e

    const/4 v3, 0x0

    aget-object v0, v2, v3
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_20

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    return-object v0

    :catchall_20
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public getCurrentAppHome()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x74106d2a3585745L
    .end annotation

    const-wide v0, 0xa6ea71dc8b78cabL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v0, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public getLibraryMapping()Ljava/util/Map;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x5627001694f6dd0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-wide v0, -0x66a14365e6a9650L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v0, p0, Lcom/aide/ui/services/ProjectService;->libraryMapping:Ljava/util/Map;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public gn(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x3a1f9c5a2d0e571L
    .end annotation

    const-wide v0, -0x255e403f22496abfL  # -3.844704377078697E128

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->FH(Ljava/lang/String;)Z

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

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public hz(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x12506c677aee8670L
    .end annotation

    const-wide v0, -0x2410cabe67c26d50L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2
    invoke-static {p1}, Lcom/aide/ui/AppPreferences;->saveUserAndroidJar(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->jJ()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    :cond_18
    return-void

    :catchall_19
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method protected init()V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x2502a7a67fd99731L
    .end annotation

    const-wide v0, -0x385555f219af447fL  # -1.772145013757322E37

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/services/ProjectService;->Hw:Ljava/util/List;

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/services/ProjectService;->libraryMapping:Ljava/util/Map;

    .line 3
    iget-object v3, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-eqz v3, :cond_27

    .line 4
    iget-object v3, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    iget-object v4, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/services/ProjectService;->Hw:Ljava/util/List;

    invoke-interface {v3, v4, v2, v5}, Lcom/aide/ui/services/ProjectSupport;->U2(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public isOpenProject()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x3fce08b4dbb971a8L
    .end annotation

    const-wide v0, 0x38d33d7e2e1d2c48L  # 5.789889068554099E-35

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v0, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public isPremium()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x506d545239786e80L
    .end annotation

    const-wide v0, -0x291eafecd9d85610L  # -3.252786375020484E110

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->isOpenProject()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2}, Lcom/aide/ui/services/ProjectSupport;->isPremium()Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_24

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method protected jJ()V
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x3905496b4706d1c0L
    .end annotation

    const-wide v0, -0x42f45f08e25f65a0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-eqz v2, :cond_22

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getEngineService()Lcom/aide/ui/services/EngineService;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v3}, Lcom/aide/ui/services/ProjectSupport;->makeEngineSolution()Lcom/aide/engine/EngineSolution;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/services/EngineService;->er(Lcom/aide/engine/EngineSolution;)V

    goto :goto_40

    .line 3
    :cond_22
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getEngineService()Lcom/aide/ui/services/EngineService;

    move-result-object v2

    new-instance v3, Lcom/aide/engine/EngineSolution;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 4
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->Hw()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/aide/engine/service/CodeModelFactory;->j6(Ljava/util/List;)Ljava/util/TreeMap;

    move-result-object v6

    .line 5
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->Hw()Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aide/engine/EngineSolution;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/List;)V

    .line 6
    invoke-virtual {v2, v3}, Lcom/aide/ui/services/EngineService;->er(Lcom/aide/engine/EngineSolution;)V

    .line 7
    :goto_40
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getEngineService()Lcom/aide/ui/services/EngineService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/EngineService;->ef()V

    .line 8
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getEngineService()Lcom/aide/ui/services/EngineService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/EngineService;->ei()V
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_4f

    return-void

    :catchall_4f
    move-exception v2

    .line 9
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_57

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_57
    throw v2
.end method

.method public jO(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x12d4083ed9f7760L
    .end annotation

    const-wide v0, 0x4a77c391bb07b300L  # 5.556966521534813E50

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->getBuildVariant()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :cond_27
    move-object v2, p1

    .line 3
    :goto_28
    invoke-virtual {p0, v2}, Lcom/aide/ui/services/ProjectService;->switchBuildVariant(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method public kQ(Ljava/lang/String;Z)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x83a59531d1a43b1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v0, :cond_11

    const-wide v0, 0x1b990eb287c227f1L  # 9.893700258782139E-176

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, p0, p1, v2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    invoke-virtual {p0, p1}, Lcom/aide/ui/services/ProjectService;->ef(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    if-eqz p1, :cond_66

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 3
    invoke-direct {p0, p1}, Lcom/aide/ui/services/ProjectService;->saveCurrentAppHome(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/aide/ui/services/ProjectService;->ye()V

    .line 5
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->J0()Lcom/aide/ui/services/ErrorService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/services/ErrorService;->aM()V

    .line 6
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getNavigateService()Lcom/aide/ui/services/NavigateService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/services/NavigateService;->Hw()V

    .line 7
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/services/OpenFileService;->Zo()V

    .line 8
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->Zo()Lcom/aide/ui/build/BuildService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/BuildService;->QX()V

    .line 9
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMavenService()Lcom/aide/ui/services/MavenService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/services/MavenService;->resetDepPathMap()V

    .line 10
    invoke-direct {p0, p1}, Lcom/aide/ui/services/ProjectService;->getProjectSupport(Ljava/lang/String;)Lcom/aide/ui/services/ProjectSupport;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    .line 11
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string v1, "Opening project..."

    new-instance v2, Lcom/aide/ui/services/ProjectService$c;

    invoke-direct {v2, p0}, Lcom/aide/ui/services/ProjectService$c;-><init>(Lcom/aide/ui/services/ProjectService;)V

    new-instance v3, Lcom/aide/ui/services/ProjectService$d;

    invoke-direct {v3, p0, p2}, Lcom/aide/ui/services/ProjectService$d;-><init>(Lcom/aide/ui/services/ProjectService;Z)V

    invoke-static {v0, v1, v2, v3}, Lcom/aide/ui/ServiceContainer;->sy(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_66
    .catchall {:try_start_0 .. :try_end_66} :catchall_67

    :cond_66
    return-void

    :catchall_67
    move-exception v0

    .line 12
    sget-boolean v1, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v1, :cond_7c

    const-wide v2, 0x1b990eb287c227f1L  # 9.893700258782139E-176

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7c
    throw v0
.end method

.method public ko()V
    .registers 8
    .annotation runtime Labcd/ey;
        method = -0x217f52976d4c03fcL
    .end annotation

    const-wide v0, 0x268d3ea10ef78424L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const v3, 0x7f0d05eb

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/aide/ui/ServiceContainer;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->Mr()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->lg()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/ui/services/ProjectService$a;

    invoke-direct {v6, p0}, Lcom/aide/ui/services/ProjectService$a;-><init>(Lcom/aide/ui/services/ProjectService;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/aide/common/MessageBox;->QX(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ValueRunnable;)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public lg()Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x30e3b3058fd0aafL
    .end annotation

    const-wide v0, -0x427d27f7653c5721L  # -2.1423012748281688E-12

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-nez v2, :cond_13

    const-string v0, ""

    return-object v0

    .line 2
    :cond_13
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ProjectService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BuildVariant_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "debug"

    .line 3
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_38

    return-object v0

    :catchall_38
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method

.method public lp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x4c5ccd5c2cc7a529L
    .end annotation

    const-wide v0, -0x566396f5929917a9L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-nez v2, :cond_12

    const/4 p1, 0x0

    goto :goto_18

    :cond_12
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    :goto_18
    return-object p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public nw(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x19c72de7215d5c10L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x26c4b5bd4d554d60L  # 6.265708426610589E-122

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-nez v2, :cond_12

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_12
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->ro(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object p1

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public openProject(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x5654f75f19d19L
    .end annotation

    const-wide v0, -0x6ab67ea84802c6a9L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ProjectService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->isTrainerMode()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1f

    goto :goto_4c

    .line 3
    :cond_1f
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v6}, Lcom/aide/ui/MainActivity;->checkSelfPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    if-eqz p1, :cond_3a

    const-string v2, "App init: From intent"

    .line 4
    invoke-static {v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/aide/ui/services/ProjectService;->SI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/services/ProjectService;->saveCurrentAppHome(Ljava/lang/String;)V

    goto :goto_4c

    :cond_3a
    const-string v3, "CurrentAppHome"

    .line 6
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-eqz v2, :cond_4c

    .line 7
    invoke-direct {p0, v2}, Lcom/aide/ui/services/ProjectService;->getProjectSupport(Ljava/lang/String;)Lcom/aide/ui/services/ProjectSupport;

    move-result-object v2

    if-nez v2, :cond_4c

    .line 8
    iput-object v5, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    .line 9
    :cond_4c
    :goto_4c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/aide/ui/services/ProjectService;->getProjectSupport(Ljava/lang/String;)Lcom/aide/ui/services/ProjectSupport;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    .line 10
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->init()V

    .line 11
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-eqz v2, :cond_69

    .line 12
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getDebugger()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v3}, Lcom/aide/ui/services/ProjectSupport;->yS()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/aide/ui/debugger/Debugger;->P8(Ljava/lang/String;Z)V

    .line 13
    :cond_69
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-eqz v2, :cond_7d

    const-string v2, "App init: Opened existing project"

    .line 14
    invoke-static {v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->tp(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/aide/ui/services/ProjectService;->ye()V

    .line 16
    invoke-virtual {p0, v5, v4}, Lcom/aide/ui/services/ProjectService;->et(Ljava/util/List;Z)V

    const-string v2, "init"

    .line 17
    invoke-virtual {p0, v2}, Lcom/aide/ui/services/ProjectService;->sy(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_5 .. :try_end_7d} :catchall_7e

    :cond_7d
    return-void

    :catchall_7e
    move-exception v2

    .line 18
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_86

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_86
    throw v2
.end method

.method public reloadingProject()V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0xccbcfb4ddea3c15L
    .end annotation

    const-wide v0, -0x2e56d7d29df123cbL  # -2.4435804799633854E85

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/aide/ui/services/ProjectService;->getProjectSupport(Ljava/lang/String;)Lcom/aide/ui/services/ProjectSupport;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->Ws()V

    .line 3
    :cond_1b
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getDebugger()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/debugger/Debugger;->ef()V

    .line 4
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-eqz v2, :cond_3a

    .line 5
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "Reloading project..."

    new-instance v4, Lcom/aide/ui/services/ProjectService$e;

    invoke-direct {v4, p0}, Lcom/aide/ui/services/ProjectService$e;-><init>(Lcom/aide/ui/services/ProjectService;)V

    new-instance v5, Lcom/aide/ui/services/ProjectService$f;

    invoke-direct {v5, p0}, Lcom/aide/ui/services/ProjectService$f;-><init>(Lcom/aide/ui/services/ProjectService;)V

    invoke-static {v2, v3, v4, v5}, Lcom/aide/ui/ServiceContainer;->sy(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_40

    .line 6
    :cond_3a
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->init()V

    .line 7
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->jJ()V
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    :goto_40
    return-void

    :catchall_41
    move-exception v2

    .line 8
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_49

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_49
    throw v2
.end method

.method public ro(Ljava/lang/String;)I
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x2c20f8f5b20036c9L
    .end annotation

    const-wide v0, 0x1520d7b8281dec49L  # 6.557578652469285E-207

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/services/ProjectService;->getProjectSupport(Ljava/lang/String;)Lcom/aide/ui/services/ProjectSupport;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->getOpenProjectNameStringId(Ljava/lang/String;)I

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public sG()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x835877095404414L
    .end annotation

    const-wide v0, 0x4ec219ae15afc7ecL  # 2.498475323380545E71

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2}, Lcom/aide/ui/services/ProjectSupport;->Hw()Z

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_19

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0

    :catchall_19
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public switchBuildVariant(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x1470c593082ed714L
    .end annotation

    const-wide v0, 0x19f16e8f93ec4af4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-eqz v2, :cond_6b

    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->lg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 2
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->Zo()Lcom/aide/ui/build/BuildService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/build/BuildService;->tp()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3a

    .line 3
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const v4, 0x7f0d0664

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/aide/ui/ServiceContainer;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_6b

    .line 4
    :cond_3a
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const v4, 0x7f0d0669

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Lcom/aide/ui/ServiceContainer;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5
    invoke-direct {p0, p1}, Lcom/aide/ui/services/ProjectService;->FN(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getDebugger()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v3}, Lcom/aide/ui/services/ProjectSupport;->yS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/debugger/Debugger;->g3(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->Zo()Lcom/aide/ui/build/BuildService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/build/BuildService;->XL()V

    .line 8
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->reloadingProject()V
    :try_end_6b
    .catchall {:try_start_5 .. :try_end_6b} :catchall_6c

    :cond_6b
    :goto_6b
    return-void

    :catchall_6c
    move-exception v2

    .line 9
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_74

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_74
    throw v2
.end method

.method public sy(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x455b16d5cce46429L
    .end annotation

    const-wide v0, -0x286124a658236797L  # -1.1873254631881973E114

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "isPremium"

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->isPremium()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "libraryCount"

    .line 3
    iget-object v4, p0, Lcom/aide/ui/services/ProjectService;->libraryMapping:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "referrer"

    .line 4
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/project/AndroidProjectSupport;->iW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    const-string v3, "package"

    .line 6
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/aide/ui/project/AndroidProjectSupport;->getProjectPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    const-string v3, "Project opened"

    .line 7
    invoke-static {v3, v2}, Lcom/aide/ui/firebase/FireBaseLogEvent;->EQ(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_50

    return-void

    :catchall_50
    move-exception v2

    .line 8
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_58

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v2
.end method

.method public tp(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xaa771fbc8275fb0L
    .end annotation

    const-wide v0, 0x3c2804e6f078e60L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->isOpenProject()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->Zo(Ljava/lang/String;)Z

    move-result p1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_22

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public u7()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x48e1418dbe5c047L
    .end annotation

    const-wide v0, -0x13f194023af44449L  # -3.2004603573899038E212

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->isOpenProject()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->Zo()Lcom/aide/ui/build/BuildService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/build/BuildService;->tp()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public v5(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1bb70f521243973fL
    .end annotation

    const-wide v0, -0xd9b52f9b22979f1L  # -1.102936393578475E243

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->nw(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->reloadingProject()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public vJ(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x72727d876f22fd0L
    .end annotation

    const-wide v0, 0xe131a609d9f23d0L  # 7.162190833201844E-241

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0, p1}, Lcom/aide/ui/services/ProjectService;->SI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public vy(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x301e55763b0e2f8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-wide v0, -0xc2e3c94924920f8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->libraryMapping:Ljava/util/Map;

    invoke-static {p1, v2}, Labcd/xd;->j6(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public wc()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2ded425079651708L
    .end annotation

    const-wide v0, -0x9b69e1200859f58L  # -6.244264501952277E261

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/aide/ui/services/ProjectService;->getProjectSupport(Ljava/lang/String;)Lcom/aide/ui/services/ProjectSupport;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->Ws()V

    .line 3
    :cond_1b
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->currentAppHome:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 4
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->init()V

    .line 5
    :cond_22
    invoke-virtual {p0}, Lcom/aide/ui/services/ProjectService;->jJ()V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public we(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x3ab908dc0ae388b0L
    .end annotation

    const-wide v0, 0x1c7553d4a33d9ec0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->a8(Ljava/lang/String;)Z

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

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public x9()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x180ca3f0f2f4ae94L
    .end annotation

    const-wide v0, 0xc0c05a7b111ed6cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    if-nez v2, :cond_12

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_12
    iget-object v2, p0, Lcom/aide/ui/services/ProjectService;->pojectSupport:Lcom/aide/ui/services/ProjectSupport;

    invoke-interface {v2}, Lcom/aide/ui/services/ProjectSupport;->J8()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public yO(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x11a4e8c877f79ad9L
    .end annotation

    const-wide v0, 0x179bebea54f1bbe9L  # 5.976435741044122E-195

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/services/ProjectService;->getProjectSupport(Ljava/lang/String;)Lcom/aide/ui/services/ProjectSupport;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 2
    invoke-interface {v2, p1}, Lcom/aide/ui/services/ProjectSupport;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 3
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getLicenseService()Lcom/aide/ui/services/LicenseService;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v4

    const-string v5, "open_project"

    invoke-virtual {v3, v4, v2, v5}, Lcom/aide/ui/services/LicenseService;->cb(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 4
    :cond_26
    invoke-virtual {p0, p1}, Lcom/aide/ui/services/ProjectService;->XX(Ljava/lang/String;)V

    const-string v2, "openProjectUser"

    .line 5
    invoke-virtual {p0, v2}, Lcom/aide/ui/services/ProjectService;->sy(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2f

    :cond_2e
    :goto_2e
    return-void

    :catchall_2f
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public yS()Ljava/util/List;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x53d4f0d5e214e69L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x16b30c4bc98030d7L  # -1.7313515098802871E199

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/ProjectService;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v0, p0, Lcom/aide/ui/services/ProjectService;->Hw:Ljava/util/List;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/services/ProjectService;->VH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
