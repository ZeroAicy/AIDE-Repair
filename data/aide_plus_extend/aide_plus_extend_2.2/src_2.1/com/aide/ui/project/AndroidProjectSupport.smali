.class public Lcom/aide/ui/project/AndroidProjectSupport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aide/ui/services/ProjectSupport;


# annotations
.annotation runtime Labcd/cy;
    clazz = -0x66df21c1892d81d8L
    container = -0x66df21c1892d81d8L
    user = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/project/AndroidProjectSupport$a;,
        Lcom/aide/ui/project/AndroidProjectSupport$d;,
        Lcom/aide/ui/project/AndroidProjectSupport$e;,
        Lcom/aide/ui/project/AndroidProjectSupport$b;,
        Lcom/aide/ui/project/AndroidProjectSupport$c;
    }
.end annotation


# static fields
.field private static synthetic DW:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field

.field private static synthetic j6:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/project/AndroidProjectSupport;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x14478e293da02925L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x26c2be21eba6ea78L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

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

    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static AL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x254faa8866afae8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x2869b2aac7fcbf08L  # -8.581511297185291E113

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->wc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/util/ClassPath$Entry;

    .line 4
    invoke-virtual {v2}, Lcom/aide/ui/util/ClassPath$Entry;->isSrcKind()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 5
    invoke-virtual {v2, p0}, Lcom/aide/ui/util/ClassPath$Entry;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_35

    goto :goto_1a

    :cond_34
    return-object v0

    :catchall_35
    move-exception v0

    .line 7
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_46

    const-wide v2, -0x2869b2aac7fcbf08L  # -8.581511297185291E113

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    goto :goto_48

    :goto_47
    throw v0

    :goto_48
    goto :goto_47
.end method

.method private static CU(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x50b1144733c5aa0dL
    .end annotation

    const-wide v0, 0x140ce2084e1a02c1L  # 4.289774388396284E-212

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->yS()Ljava/util/List;

    move-result-object v3

    .line 2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_31

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x0

    .line 3
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_32

    return-object v3

    :cond_31
    return-object v2

    :catchall_32
    move-exception v3

    .line 4
    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_3a

    invoke-static {v3, v0, v1, v2, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v3
.end method

.method private Cz(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x10b7bad740af8bc0L
    .end annotation

    const-wide v0, 0x161b09afd370eff0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, ".xml"

    .line 1
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/services/ProjectService;->SI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 3
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->BT()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_31

    return p1

    :cond_2f
    const/4 p1, 0x0

    return p1

    :catchall_31
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public static Eq(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x246c00f2183423b7L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1885eff0fb96c08dL  # -2.903067725979889E190

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_1a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v3
.end method

.method public static Ev(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation runtime Labcd/ey;
        method = 0x1d188f73c13e161bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x7a7501ec5a4dea9L  # -5.216809271917072E271

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    invoke-static {p0, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->aj(Ljava/util/Map;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_30

    aget-object v3, v0, v2

    .line 2
    invoke-static {v3, p2}, Lcom/aide/ui/util/FileSystem;->nw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 3
    invoke-static {v3, p2}, Lcom/aide/ui/util/FileSystem;->BT(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_32

    return-object p0

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_30
    const/4 p0, 0x0

    return-object p0

    :catchall_32
    move-exception v0

    .line 4
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, -0x7a7501ec5a4dea9L  # -5.216809271917072E271

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    goto :goto_46

    :goto_45
    throw v0

    :goto_46
    goto :goto_45
.end method

.method public static FN(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x202116e60626c8ccL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x1706118ff25ce9a4L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 5
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->lg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3f

    goto :goto_1a

    :cond_3e
    return-object v0

    :catchall_3f
    move-exception v0

    .line 8
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_50

    const-wide v2, 0x1706118ff25ce9a4L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v0

    :goto_52
    goto :goto_51
.end method

.method private Gj(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x64ae01f22024354L
    .end annotation

    const-wide v0, 0x1f53411d3635623cL  # 8.764985209336757E-158

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->BT()Ljava/util/Map;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return p1

    :catchall_27
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method private I()Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x14a7b167563e640L
    .end annotation

    const-wide v0, 0x8694d41d519000L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/build/android/m;->Mr()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->P8()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v3}, Lcom/aide/ui/project/AndroidProjectSupport;->vy(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4
    invoke-static {}, Lcom/aide/ui/App;->getNativeCodeSupportService()Lcom/aide/ui/services/NativeCodeSupportService;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/App;->gn()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "This project contains native code."

    invoke-virtual {v2, v3, v4}, Lcom/aide/ui/services/NativeCodeSupportService;->ca(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_41

    const/4 v0, 0x1

    return v0

    :cond_3f
    const/4 v0, 0x0

    return v0

    :catchall_41
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_49

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_49
    goto :goto_4b

    :goto_4a
    throw v2

    :goto_4b
    goto :goto_4a
.end method

.method private Jl(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xb084b4adee9f53cL
    .end annotation

    const-wide v0, 0x92203363813f2fcL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, ".aidl"

    .line 1
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/services/ProjectService;->SI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 3
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->BT()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_31

    return p1

    :cond_2f
    const/4 p1, 0x0

    return p1

    :catchall_31
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method private Mz()Z
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0xcaf6977e1260384L
    .end annotation

    const-wide v0, 0x13cb60a99b8572ccL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->qp()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 4
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aide/ui/project/AndroidProjectSupport;->WB(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/aide/ui/App;->getNativeCodeSupportService()Lcom/aide/ui/services/NativeCodeSupportService;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/App;->gn()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/aide/ui/project/AndroidProjectSupport$a;

    invoke-direct {v6, p0}, Lcom/aide/ui/project/AndroidProjectSupport$a;-><init>(Lcom/aide/ui/project/AndroidProjectSupport;)V

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/aide/ui/services/NativeCodeSupportService;->a8(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0

    .line 6
    :cond_3c
    invoke-direct {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->I()Z

    move-result v0
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    return v0

    :catchall_41
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_49

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_49
    throw v2
.end method

.method public static OW(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .annotation runtime Labcd/ey;
        method = -0x1fc5a561268c2f1L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x2094924f3c3ef6ebL  # 9.819482686035294E-152

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/aide/ui/services/ProjectService;->KD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/aide/ui/project/internal/GradleTools;->aM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1d

    .line 4
    :cond_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    return-object v1

    :catchall_3f
    move-exception v0

    .line 6
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_51

    const-wide v2, 0x2094924f3c3ef6ebL  # 9.819482686035294E-152

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    goto :goto_53

    :goto_52
    throw v0

    :goto_53
    goto :goto_52
.end method

.method public static Q6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x1f93fce7f031fc19L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x377a95d8542669ddL  # -2.3318508345604513E41

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->CU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 2
    invoke-static {v3}, Lcom/aide/ui/project/internal/GradleTools;->Ws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Labcd/x8;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1c
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->BT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-object p0

    :catchall_21
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public static Qq(Ljava/util/Map;Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x7ca053fa37056a0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0x5eb3ad9482bb3d30L

    invoke-static {v2, v3, v1, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v3

    .line 5
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v4}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/util/BuildGradle;

    .line 7
    iget-object v4, v3, Lcom/aide/ui/util/BuildGradle;->wearAppProject:Lcom/aide/ui/util/BuildGradle$ProjectDependency;

    if-eqz v4, :cond_7d

    .line 8
    new-instance v4, Lcom/aide/ui/util/BuildGradleExt;

    invoke-direct {v4}, Lcom/aide/ui/util/BuildGradleExt;-><init>()V

    .line 9
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->getSettingsGradlePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v4, v5}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/util/BuildGradleExt;

    .line 11
    iget-object v3, v3, Lcom/aide/ui/util/BuildGradle;->wearAppProject:Lcom/aide/ui/util/BuildGradle$ProjectDependency;

    invoke-virtual {v3, v2, v4}, Lcom/aide/ui/util/BuildGradle$ProjectDependency;->getProjectDependencyPath(Ljava/lang/String;Lcom/aide/ui/util/BuildGradleExt;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v3}, Lcom/aide/ui/util/FileSystem;->isDirectory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 13
    invoke-static {v3, p1}, Lcom/aide/ui/project/internal/GradleTools;->a8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->Ws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-static {v3}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 16
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v6

    .line 17
    invoke-static {v3}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v6, v3}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/util/BuildGradle;

    goto :goto_7a

    :cond_79
    move-object v3, v1

    .line 19
    :goto_7a
    invoke-static {v4, v5, v3, p1}, Lcom/aide/ui/project/WearAppProjectSupport;->v5(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/util/BuildGradle;Ljava/lang/String;)Z

    .line 20
    :cond_7d
    new-instance v3, Lcom/aide/ui/build/android/d;

    invoke-direct {v3}, Lcom/aide/ui/build/android/d;-><init>()V

    .line 21
    invoke-static {v2, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->kQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->Ws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/aide/ui/build/android/d;->Zo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_0 .. :try_end_8d} :catchall_8f

    goto :goto_15

    :cond_8e
    return-void

    :catchall_8f
    move-exception v0

    .line 23
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_a0

    const-wide v2, -0x5eb3ad9482bb3d30L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a0
    goto :goto_a2

    :goto_a1
    throw v0

    :goto_a2
    goto :goto_a1
.end method

.method private Sf(Ljava/lang/String;)V
    .registers 23
    .annotation runtime Labcd/ey;
        method = -0x14884d712dc84db8L
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    const-wide v11, 0x3a120bf65cc6108L

    :try_start_9
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_10

    invoke-static {v11, v12, v13, v14}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    new-instance v0, Lcom/aide/ui/services/TemplateService$TemplateGroup;

    const-string v15, "Library"

    new-instance v16, Lcom/aide/ui/services/TemplateService$Template;

    const/4 v3, 0x1

    const-string v4, "Android Library"

    const-string v5, "Gradle/Android SDK/Java/Xml"

    const-string v6, "library"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v9, "com.aide.ui"

    const-string v10, "ANDROID"

    const-string v17, "course_android"

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v1

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-nez v1, :cond_3d

    sget-object v1, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    const-string v2, "com.aide.ui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_3d

    :cond_3a
    const/16 v20, 0x0

    goto :goto_3f

    :cond_3d
    :goto_3d
    const/16 v20, 0x1

    :goto_3f
    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v11, v17

    move/from16 v12, v20

    invoke-direct/range {v1 .. v12}, Lcom/aide/ui/services/TemplateService$Template;-><init>(Lcom/aide/ui/services/ProjectSupport;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const v4, 0x7f070078

    const-string v5, "GradleLibrary.zip"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const-string v1, "AndroidManifest.xml"

    aput-object v1, v6, v18

    const-string v1, "LibraryActivity.java"

    aput-object v1, v6, v19

    const-string v7, ""

    move-object v1, v0

    move-object v2, v15

    move-object/from16 v3, v16

    invoke-direct/range {v1 .. v7}, Lcom/aide/ui/services/TemplateService$TemplateGroup;-><init>(Ljava/lang/String;Lcom/aide/ui/services/TemplateService$Template;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v1

    new-instance v2, Labcd/gd;

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/aide/ui/util/FileSystem;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/project/AndroidProjectSupport$c;

    invoke-direct {v4, v13, v14}, Lcom/aide/ui/project/AndroidProjectSupport$c;-><init>(Lcom/aide/ui/project/AndroidProjectSupport;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0, v4}, Labcd/gd;-><init>(Ljava/lang/String;Lcom/aide/ui/services/TemplateService$TemplateGroup;Lcom/aide/common/ValueRunnable;)V

    .line 5
    invoke-static {v1, v2}, Lcom/aide/common/MessageBox;->gW(Landroid/app/Activity;Lcom/aide/common/MessageBox;)V
    :try_end_78
    .catchall {:try_start_9 .. :try_end_78} :catchall_79

    return-void

    :catchall_79
    move-exception v0

    .line 6
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_86

    const-wide v1, 0x3a120bf65cc6108L

    invoke-static {v0, v1, v2, v13, v14}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_86
    throw v0
.end method

.method private WB(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x112d3ea31516174L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aide/ui/util/BuildGradle$RemoteRepository;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x3499367225cdd2cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 3
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v3

    .line 4
    invoke-static {p1}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v3, v4}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/util/BuildGradle;

    .line 6
    iget-object v3, v3, Lcom/aide/ui/util/BuildGradle;->curProjectsRepositorys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/util/BuildGradle$Repository;

    .line 7
    instance-of v5, v4, Lcom/aide/ui/util/BuildGradle$RemoteRepository;

    if-eqz v5, :cond_2c

    .line 8
    check-cast v4, Lcom/aide/ui/util/BuildGradle$RemoteRepository;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 9
    :cond_42
    invoke-static {p1}, Lcom/aide/ui/project/internal/GradleTools;->P8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Lcom/aide/ui/util/FileSystem;->isFileAndNotZip(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 11
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/util/BuildGradle;

    .line 12
    iget-object v4, v3, Lcom/aide/ui/util/BuildGradle;->allProjectsRepositorys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5d
    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/util/BuildGradle$Repository;

    .line 13
    instance-of v6, v5, Lcom/aide/ui/util/BuildGradle$RemoteRepository;

    if-eqz v6, :cond_5d

    .line 14
    check-cast v5, Lcom/aide/ui/util/BuildGradle$RemoteRepository;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 15
    :cond_73
    iget-object v3, v3, Lcom/aide/ui/util/BuildGradle;->subProjectsRepositorys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_79
    :goto_79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/util/BuildGradle$Repository;

    .line 16
    instance-of v5, v4, Lcom/aide/ui/util/BuildGradle$RemoteRepository;

    if-eqz v5, :cond_79

    .line 17
    check-cast v4, Lcom/aide/ui/util/BuildGradle$RemoteRepository;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catchall {:try_start_5 .. :try_end_8e} :catchall_90

    goto :goto_79

    :cond_8f
    return-object v2

    :catchall_90
    move-exception v2

    .line 18
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_98

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_98
    goto :goto_9a

    :goto_99
    throw v2

    :goto_9a
    goto :goto_99
.end method

.method public static XG(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x13aeadd045361db8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x3214b79bfa07bba8L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_1a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v3
.end method

.method public static XX(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x36e686d9d5a7fbc0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0x1a790fb28d4a9a90L  # -1.1898052138625066E181

    invoke-static {v2, v3, v1, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aide/ui/util/BuildGradle;

    .line 4
    :cond_23
    invoke-static {p0, p1}, Lcom/aide/ui/project/internal/GradleTools;->a8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/aide/ui/project/WearAppProjectSupport;->Zo(Ljava/lang/String;Lcom/aide/ui/util/BuildGradle;Ljava/lang/String;)I

    move-result p0
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return p0

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, -0x1a790fb28d4a9a90L  # -1.1898052138625066E181

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public static Z1(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x10e615cb00d0c9cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x4c5f0f58cb18234L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 5
    invoke-static {v2, p1}, Lcom/aide/ui/project/internal/GradleTools;->a8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3f

    goto :goto_1a

    :cond_3e
    return-object v0

    :catchall_3f
    move-exception v0

    .line 8
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_50

    const-wide v2, 0x4c5f0f58cb18234L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v0

    :goto_52
    goto :goto_51
.end method

.method public static aX(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x15d5844d841c712bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0xfe5f68f4e79aa6fL  # -1.0105680192705264E232

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->XX(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_17

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_17
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/util/BuildGradle;

    .line 4
    invoke-virtual {v0, p1}, Lcom/aide/ui/util/BuildGradle;->isMultiDexEnabled(Ljava/lang/String;)Z

    move-result p0
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return p0

    :catchall_2b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_3c

    const-wide v2, -0xfe5f68f4e79aa6fL  # -1.0105680192705264E232

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method public static aj(Ljava/util/Map;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x176100753f33ea37L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x30eb0e1a812fe4f5L  # -9.251612336972358E72

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->KD(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 4
    invoke-static {v2, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->wc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/util/ClassPath$Entry;

    .line 6
    invoke-virtual {v4}, Lcom/aide/ui/util/ClassPath$Entry;->isSrcKind()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 7
    invoke-virtual {v4, v2}, Lcom/aide/ui/util/ClassPath$Entry;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 9
    :cond_4e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_58

    return-object v1

    :catchall_58
    move-exception v0

    .line 11
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_69

    const-wide v2, -0x30eb0e1a812fe4f5L  # -9.251612336972358E72

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_69
    goto :goto_6b

    :goto_6a
    throw v0

    :goto_6b
    goto :goto_6a
.end method

.method public static aq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .annotation runtime Labcd/ey;
        method = -0x2d99a04065f7dde0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x54ed6ec0b95d1e00L  # 1.2875307488309407E101

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lcom/aide/ui/project/AndroidProjectSupport;->iW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 5
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->KD(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 6
    invoke-static {v2, p2}, Lcom/aide/ui/project/internal/GradleTools;->a8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {p0, p2}, Lcom/aide/ui/project/AndroidProjectSupport;->kQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 9
    invoke-static {v3, v4, v6, v5, p2}, Lcom/aide/ui/project/WearAppProjectSupport;->J0(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/util/BuildGradle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 10
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 11
    :cond_56
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 12
    :cond_5e
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 13
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v3

    .line 14
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v3, v4}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/util/BuildGradle;

    .line 16
    invoke-static {v2, p2}, Lcom/aide/ui/project/internal/GradleTools;->a8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {p0, p2}, Lcom/aide/ui/project/AndroidProjectSupport;->kQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-static {v4, v5, v3, v6, p2}, Lcom/aide/ui/project/WearAppProjectSupport;->J0(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/util/BuildGradle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 20
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 21
    :cond_8d
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 22
    :cond_95
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v2, p2}, Lcom/aide/ui/project/internal/GradleTools;->a8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a0
    .catchall {:try_start_0 .. :try_end_a0} :catchall_a3

    goto/16 :goto_1d

    :cond_a2
    return-object v0

    :catchall_a3
    move-exception v0

    .line 25
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_b5

    const-wide v2, 0x54ed6ec0b95d1e00L  # 1.2875307488309407E101

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b5
    goto :goto_b7

    :goto_b6
    throw v0

    :goto_b7
    goto :goto_b6
.end method

.method public static br(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x1df0e1aba69bb448L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x9af58184cc871a8L  # -8.194902817894018E261

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_1a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v3
.end method

.method public static cT(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0xb222bd18f14b90L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x371df9b30d1af20L  # -9.39496240341948E291

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lcom/aide/ui/project/AndroidProjectSupport;->iW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 5
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->yS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->Ws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 9
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_4a
    invoke-static {v2, p1}, Lcom/aide/ui/project/internal/GradleTools;->J0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 11
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_59

    goto :goto_1a

    :cond_58
    return-object v0

    :catchall_59
    move-exception v0

    .line 12
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_6a

    const-wide v2, -0x371df9b30d1af20L  # -9.39496240341948E291

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6a
    goto :goto_6c

    :goto_6b
    throw v0

    :goto_6c
    goto :goto_6b
.end method

.method private ca(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0xd97e6022848a7c3L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x1260b6cad16a98cfL  # -1.1044001202035993E220

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 2
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {p1}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 4
    invoke-static {p1}, Lcom/aide/ui/project/AndroidProjectSupport;->k2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/util/BuildGradle$Dependency;

    .line 5
    instance-of v2, v1, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    if-eqz v2, :cond_23

    .line 6
    check-cast v1, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    .line 7
    invoke-static {}, Lcom/aide/ui/App;->getMavenService()Lcom/aide/ui/services/MavenService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/aide/ui/services/MavenService;->v5(Lcom/aide/ui/util/BuildGradle$MavenDependency;)V

    goto :goto_23

    .line 8
    :cond_3d
    invoke-static {p1}, Lcom/aide/ui/project/AndroidProjectSupport;->k2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/util/BuildGradle$Dependency;

    .line 9
    instance-of v2, v1, Lcom/aide/ui/util/BuildGradle$ProjectDependency;

    if-eqz v2, :cond_45

    .line 10
    check-cast v1, Lcom/aide/ui/util/BuildGradle$ProjectDependency;

    .line 11
    new-instance v2, Lcom/aide/ui/util/BuildGradleExt;

    invoke-direct {v2}, Lcom/aide/ui/util/BuildGradleExt;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/aide/ui/project/internal/GradleTools;->getSettingsGradlePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/util/BuildGradleExt;

    .line 14
    invoke-virtual {v1, p1, v2}, Lcom/aide/ui/util/BuildGradle$ProjectDependency;->getProjectDependencyPath(Ljava/lang/String;Lcom/aide/ui/util/BuildGradleExt;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/aide/ui/util/FileSystem;->isDirectory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 16
    invoke-direct {p0, v1, p2}, Lcom/aide/ui/project/AndroidProjectSupport;->ca(Ljava/lang/String;Ljava/util/HashSet;)V
    :try_end_73
    .catchall {:try_start_0 .. :try_end_73} :catchall_75

    goto :goto_45

    :cond_74
    return-void

    :catchall_75
    move-exception v0

    .line 17
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_86

    const-wide v2, -0x1260b6cad16a98cfL  # -1.1044001202035993E220

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_86
    goto :goto_88

    :goto_87
    throw v0

    :goto_88
    goto :goto_87
.end method

.method public static synthetic cb(Lcom/aide/ui/project/AndroidProjectSupport;Ljava/lang/String;)V
    .registers 2
    .annotation runtime Labcd/ey;
        method = 0xc2fa84236180ebL
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->e9(Ljava/lang/String;)V

    return-void
.end method

.method private static dx(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xe092c598cfd0144L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/ui/util/ClassPath$Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x6cd69dbc9cbb64L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/util/ClassPath$Entry;

    .line 2
    invoke-virtual {v4}, Lcom/aide/ui/util/ClassPath$Entry;->isConKind()Z

    move-result v4

    if-eqz v4, :cond_11

    return-void

    .line 3
    :cond_24
    sget-object v3, Lcom/aide/ui/util/ClassPath$Entry;->v5:Lcom/aide/ui/util/ClassPath$Entry;

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v3

    .line 4
    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    goto :goto_34

    :goto_33
    throw v3

    :goto_34
    goto :goto_33
.end method

.method public static e3()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x2ad626162d37a95L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x30fc71c849fadbfL  # -6.475392555879854E293

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->yS()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_20

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_28

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v3
.end method

.method private e9(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x18bba40570f9417bL
    .end annotation

    const-wide v0, -0x668f6e1b0cf18d1L  # -5.104296588069986E277

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, ":"

    .line 1
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_97

    .line 3
    new-instance v3, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/aide/ui/util/BuildGradle$MavenDependency;-><init>(I)V

    const/4 v5, 0x0

    .line 4
    aget-object v6, v2, v5

    iput-object v6, v3, Lcom/aide/ui/util/BuildGradle$MavenDependency;->groupId:Ljava/lang/String;

    .line 5
    aget-object v4, v2, v4

    iput-object v4, v3, Lcom/aide/ui/util/BuildGradle$MavenDependency;->artifactId:Ljava/lang/String;

    const/4 v4, 0x2

    .line 6
    aget-object v2, v2, v4

    iput-object v2, v3, Lcom/aide/ui/util/BuildGradle$MavenDependency;->version:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/aide/ui/App;->getMavenService()Lcom/aide/ui/services/MavenService;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/aide/ui/services/MavenService;->u7(Lcom/aide/ui/util/BuildGradle$MavenDependency;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_79

    const-string v3, ".jar"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_98

    if-eqz v3, :cond_79

    .line 9
    :try_start_3c
    new-instance v3, Ljava/io/File;

    .line 10
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v4}, Lcom/aide/ui/project/internal/GradleTools;->Mr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_56

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 13
    :cond_56
    new-instance v4, Ljava/io/File;

    invoke-static {v2}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v2}, Lcom/aide/common/StreamUtilities;->Zo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_6c} :catch_6d
    .catchall {:try_start_3c .. :try_end_6c} :catchall_98

    goto :goto_71

    :catch_6d
    move-exception v2

    .line 16
    :try_start_6e
    invoke-static {v2}, Lcom/aide/common/AppLog;->v5(Ljava/lang/Throwable;)V

    .line 17
    :goto_71
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->CU()V

    goto :goto_8a

    :cond_79
    if-eqz v2, :cond_8a

    const-string v3, ".aar"

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 19
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aide/ui/services/ProjectService;->v5(Ljava/lang/String;)V

    .line 20
    :cond_8a
    :goto_8a
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "Library has been added"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_97
    .catchall {:try_start_6e .. :try_end_97} :catchall_98

    :cond_97
    return-void

    :catchall_98
    move-exception v2

    .line 21
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_a0

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_a0
    throw v2
.end method

.method private eU()Z
    .registers 13
    .annotation runtime Labcd/ey;
        method = -0x2a95832b96418bd1L
    .end annotation

    const-wide v0, -0xccfa0a2a6f23ec5L  # -7.154708457897709E246

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->BT()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1c

    return v3

    .line 2
    :cond_1c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->BT()Ljava/util/Map;

    move-result-object v2

    const/4 v4, 0x0

    .line 4
    invoke-static {v2, v4}, Lcom/aide/ui/project/AndroidProjectSupport;->aj(Ljava/util/Map;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2d
    if-ge v6, v4, :cond_4a

    aget-object v8, v2, v6

    .line 5
    invoke-virtual {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->mb()I

    move-result v9

    new-array v10, v3, [Ljava/lang/String;

    const-string v11, ".java"

    aput-object v11, v10, v5

    invoke-static {v8, v9, v10}, Lcom/aide/ui/util/FileSystem;->J8(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    .line 6
    invoke-virtual {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->mb()I

    move-result v8

    if-lt v7, v8, :cond_47

    return v3

    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 7
    :cond_4a
    invoke-static {}, Lcom/aide/ui/build/android/m;->Mr()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 8
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->P8()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v4}, Lcom/aide/ui/project/AndroidProjectSupport;->vy(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 10
    invoke-virtual {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->mb()I

    move-result v6

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, ".c"

    aput-object v9, v8, v5

    const-string v9, ".cpp"

    aput-object v9, v8, v3

    const/4 v9, 0x2

    const-string v10, ".cc"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, ".h"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, ".hpp"

    aput-object v10, v8, v9

    invoke-static {v4, v6, v8}, Lcom/aide/ui/util/FileSystem;->J8(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v7, v4

    .line 11
    invoke-virtual {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->mb()I

    move-result v4
    :try_end_95
    .catchall {:try_start_5 .. :try_end_95} :catchall_99

    if-lt v7, v4, :cond_5c

    return v3

    :cond_98
    return v5

    :catchall_99
    move-exception v2

    .line 12
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_a1

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_a1
    goto :goto_a3

    :goto_a2
    throw v2

    :goto_a3
    goto :goto_a2
.end method

.method private ef(Ljava/lang/String;)V
    .registers 23
    .annotation runtime Labcd/ey;
        method = -0x4733ff64832bc96cL
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    const-wide v11, -0x6de28be207bf43b4L

    :try_start_9
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_10

    invoke-static {v11, v12, v13, v14}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    new-instance v0, Lcom/aide/ui/services/TemplateService$TemplateGroup;

    const-string v15, "Flavor"

    new-instance v16, Lcom/aide/ui/services/TemplateService$Template;

    const/4 v3, 0x1

    const-string v4, "Android Flavor"

    const-string v5, "Gradle/Android SDK/Java/Xml"

    const-string v6, "flavor"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v9, "com.aide.ui"

    const-string v10, "ANDROID"

    const-string v17, "course_android"

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v1

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-nez v1, :cond_3d

    sget-object v1, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    const-string v2, "com.aide.ui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_3d

    :cond_3a
    const/16 v20, 0x0

    goto :goto_3f

    :cond_3d
    :goto_3d
    const/16 v20, 0x1

    :goto_3f
    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v11, v17

    move/from16 v12, v20

    invoke-direct/range {v1 .. v12}, Lcom/aide/ui/services/TemplateService$Template;-><init>(Lcom/aide/ui/services/ProjectSupport;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const v4, 0x7f070078

    const-string v5, "GradleFlavor.zip"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const-string v1, "AndroidManifest.xml"

    aput-object v1, v6, v18

    const-string v1, "strings.xml"

    aput-object v1, v6, v19

    const-string v7, ""

    move-object v1, v0

    move-object v2, v15

    move-object/from16 v3, v16

    invoke-direct/range {v1 .. v7}, Lcom/aide/ui/services/TemplateService$TemplateGroup;-><init>(Ljava/lang/String;Lcom/aide/ui/services/TemplateService$Template;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v2, 0x7f0d05bd

    const v3, 0x7f0d05ca

    const-string v4, "flavor"

    new-instance v5, Lcom/aide/ui/project/AndroidProjectSupport$d;

    invoke-direct {v5, v13, v14, v0}, Lcom/aide/ui/project/AndroidProjectSupport$d;-><init>(Lcom/aide/ui/project/AndroidProjectSupport;Ljava/lang/String;Lcom/aide/ui/services/TemplateService$TemplateGroup;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/aide/common/MessageBox;->XL(Landroid/app/Activity;IILjava/lang/String;Lcom/aide/common/ValueRunnable;)V
    :try_end_77
    .catchall {:try_start_9 .. :try_end_77} :catchall_78

    return-void

    :catchall_78
    move-exception v0

    .line 4
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_85

    const-wide v1, -0x6de28be207bf43b4L

    invoke-static {v0, v1, v2, v13, v14}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_85
    throw v0
.end method

.method public static et(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0xa8283492cd6c520L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_12

    const-wide v0, -0xc58f9565f1c6790L

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, v2, p0, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_12
    invoke-static {p0, p1}, Lcom/aide/ui/project/internal/GradleTools;->u7(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-object p0

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0xc58f9565f1c6790L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method private static fN(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x13f74bcb99eeec8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x1acf04701dda38a8L

    invoke-static {v2, v3, v1, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0, v1}, Lcom/aide/ui/project/AndroidProjectSupport;->wc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/util/ClassPath$Entry;

    .line 2
    invoke-virtual {v1}, Lcom/aide/ui/util/ClassPath$Entry;->isLibKind()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1, p0}, Lcom/aide/ui/util/ClassPath$Entry;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_35

    if-eqz v1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0

    :catchall_35
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_46

    const-wide v2, 0x1acf04701dda38a8L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    goto :goto_48

    :goto_47
    throw v0

    :goto_48
    goto :goto_47
.end method

.method public static fY(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x3ffc1c9eee16ef8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x6605145a982a810L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->nw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3
    invoke-static {p0, p1}, Lcom/aide/ui/project/internal/GradleTools;->we(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    :cond_21
    return-object v0

    :catchall_22
    move-exception v0

    .line 5
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_33

    const-wide v2, -0x6605145a982a810L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method private g3()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x383c88bd8b5a8f01L
    .end annotation

    const-wide v0, -0x3097fbc5acf39d4dL  # -3.3946807170392325E74

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->Mz()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method private static getFlatRepositoryPathMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x666a22f15a48328L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x14fdc3ad1c737658L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v4

    .line 3
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {v4, v5}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/util/BuildGradle;

    .line 5
    iget-object v4, v4, Lcom/aide/ui/util/BuildGradle;->curProjectsRepositorys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/util/BuildGradle$Repository;

    .line 6
    instance-of v6, v5, Lcom/aide/ui/util/BuildGradle$FlatLocalRepository;

    if-eqz v6, :cond_27

    .line 7
    check-cast v5, Lcom/aide/ui/util/BuildGradle$FlatLocalRepository;

    invoke-virtual {v5, p0}, Lcom/aide/ui/util/BuildGradle$FlatLocalRepository;->getFlatDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_46

    goto :goto_27

    :cond_45
    return-object v3

    :catchall_46
    move-exception v3

    .line 9
    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_4e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    goto :goto_50

    :goto_4f
    throw v3

    :goto_50
    goto :goto_4f
.end method

.method private static hK(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation runtime Labcd/ey;
        method = 0x2cf6b81ed91a82dbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x32a99a14f87411c9L  # -3.685620444674716E64

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/aide/ui/project/internal/GradleTools;->Ws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 3
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_29
    invoke-static {v1, p1}, Lcom/aide/ui/project/internal/GradleTools;->J0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 5
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_32
    invoke-static {v1}, Lcom/aide/ui/project/internal/GradleTools;->yS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3b

    goto :goto_14

    :cond_3a
    return-void

    :catchall_3b
    move-exception v0

    .line 8
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0x32a99a14f87411c9L  # -3.685620444674716E64

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    goto :goto_4f

    :goto_4e
    throw v0

    :goto_4f
    goto :goto_4e
.end method

.method public static hz(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x5d84663836fe736cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x366865db2cfd62e4L  # -3.36860775837173E46

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/aide/ui/project/AndroidProjectSupport;->iW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 4
    invoke-static {v2, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->AL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 6
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3f

    goto :goto_1a

    :cond_3e
    return-object v0

    :catchall_3f
    move-exception v0

    .line 7
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_50

    const-wide v2, -0x366865db2cfd62e4L  # -3.36860775837173E46

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v0

    :goto_52
    goto :goto_51
.end method

.method public static iW(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1ff24af88ab9c7f8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2302dda4252de818L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->nw(Ljava/lang/String;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    return p0

    :catchall_12
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_1a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v3
.end method

.method public static jJ(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x522f5730c4a1c30L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x1c2e7ec63ddd3e8L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_1a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v3
.end method

.method public static jO(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x908d470348a6814L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x2b681c05409a5e6cL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2}, Lcom/aide/ui/project/AndroidProjectSupport;->iW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 4
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v2, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->kQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_39

    goto :goto_1a

    :cond_38
    return-object v0

    :catchall_39
    move-exception v0

    .line 7
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_4a

    const-wide v2, 0x2b681c05409a5e6cL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    goto :goto_4c

    :goto_4b
    throw v0

    :goto_4c
    goto :goto_4b
.end method

.method public static jw(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation runtime Labcd/ey;
        method = -0x477ea8461ec8L
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

    const/4 v0, 0x0

    const-wide v1, 0x174578ccffc6d9b8L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 3
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/services/ProjectService;->BT()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2a
    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4
    invoke-static {v5}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 5
    invoke-static {v5}, Lcom/aide/ui/project/internal/GradleTools;->KD(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 6
    :cond_42
    invoke-static {v5}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_4b

    goto :goto_2a

    :cond_4a
    return-object v3

    :catchall_4b
    move-exception v3

    .line 7
    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_53

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    goto :goto_55

    :goto_54
    throw v3

    :goto_55
    goto :goto_54
.end method

.method private static k2(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x32576e1c320bdc8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aide/ui/util/BuildGradle$Dependency;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x453abc64ea62ca8L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v3

    .line 2
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {v3, v4}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/util/BuildGradle;

    .line 4
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->P8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Lcom/aide/ui/util/FileSystem;->isFileAndNotZip(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 6
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/util/BuildGradle;

    .line 7
    iget-object v5, v4, Lcom/aide/ui/util/BuildGradle;->subProjectsDependencies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_41

    iget-object v5, v4, Lcom/aide/ui/util/BuildGradle;->allProjectsDependencies:Ljava/util/List;

    .line 8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_80

    .line 9
    :cond_41
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v6, v4, Lcom/aide/ui/util/BuildGradle;->subProjectsDependencies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4c
    :goto_4c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aide/ui/util/BuildGradle$Dependency;

    .line 11
    instance-of v8, v7, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    if-eqz v8, :cond_4c

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 12
    :cond_60
    iget-object v4, v4, Lcom/aide/ui/util/BuildGradle;->allProjectsDependencies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_66
    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aide/ui/util/BuildGradle$Dependency;

    .line 13
    instance-of v7, v6, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    if-eqz v7, :cond_66

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 14
    :cond_7a
    iget-object v3, v3, Lcom/aide/ui/util/BuildGradle;->dependencies:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v5

    .line 15
    :cond_80
    iget-object p0, v3, Lcom/aide/ui/util/BuildGradle;->dependencies:Ljava/util/List;
    :try_end_82
    .catchall {:try_start_6 .. :try_end_82} :catchall_83

    return-object p0

    :catchall_83
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_8b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8b
    goto :goto_8d

    :goto_8c
    throw v3

    :goto_8d
    goto :goto_8c
.end method

.method public static kQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x6989b61a7e3d738L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x1932d6ef016d22a8L

    invoke-static {v2, v3, v1, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aide/ui/util/BuildGradle;

    .line 4
    :cond_23
    invoke-static {p0, p1}, Lcom/aide/ui/project/internal/GradleTools;->a8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/aide/ui/project/WearAppProjectSupport;->gn(Ljava/lang/String;Lcom/aide/ui/util/BuildGradle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-object p0

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x1932d6ef016d22a8L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public static kf(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x29b43d9bb8b50bc8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1cb405a90f0a6f40L  # -2.1117500451543773E170

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->vy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_1a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v3
.end method

.method public static ko(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x3ffcf97a3b5655f4L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x32649aec5c4851c4L  # 6.114305589421842E-66

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_1a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v3
.end method

.method public static lp(Ljava/util/Map;Z)[Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0xb03f8a06393fcb8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z)[",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_12

    const-wide v0, -0x12f9efb97dc0d470L  # -1.5211876528328184E217

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, v2, p0, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2, p1}, Lcom/aide/ui/project/internal/GradleTools;->u7(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 4
    :cond_33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3d

    return-object v1

    :catchall_3d
    move-exception v0

    .line 6
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, -0x12f9efb97dc0d470L  # -1.5211876528328184E217

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    goto :goto_54

    :goto_53
    throw v0

    :goto_54
    goto :goto_53
.end method

.method public static n5(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xfa23c38df275e80L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x72dd285fd29e390L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->yS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/values/strings.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_23

    return-object p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static oY(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x481c474e9581c28cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x1c55fccf6b7e7324L  # -1.2565765978362678E172

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lcom/aide/ui/project/AndroidProjectSupport;->iW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {v2, p0}, Labcd/xd;->FH(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, p1, v3}, Lcom/aide/ui/project/AndroidProjectSupport;->hK(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 7
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_47

    goto :goto_1a

    :cond_46
    return-object v0

    :catchall_47
    move-exception v0

    .line 8
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_58

    const-wide v2, -0x1c55fccf6b7e7324L  # -1.2565765978362678E172

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    goto :goto_5a

    :goto_59
    throw v0

    :goto_5a
    goto :goto_59
.end method

.method private static oy(Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .annotation runtime Labcd/ey;
        method = -0x1de3e614393eeb69L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x6cd7f1b43a792fbL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->KD(Ljava/lang/String;)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_1a6

    const-string v2, ".aar"

    if-eqz v1, :cond_49

    .line 3
    :try_start_1b
    invoke-static {}, Lcom/aide/ui/App;->getMavenService()Lcom/aide/ui/services/MavenService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/aide/ui/services/MavenService;->J0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 7
    :cond_49
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->k2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5c
    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/util/BuildGradle$Dependency;

    .line 10
    instance-of v5, v4, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    if-eqz v5, :cond_b7

    .line 11
    check-cast v4, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    .line 12
    invoke-static {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->getFlatRepositoryPathMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 13
    invoke-static {}, Lcom/aide/ui/App;->getMavenService()Lcom/aide/ui/services/MavenService;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/aide/ui/services/MavenService;->J8(Ljava/util/Map;Lcom/aide/ui/util/BuildGradle$MavenDependency;)Ljava/util/List;

    move-result-object v4

    .line 14
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 15
    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7e

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7e

    .line 16
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a1
    :goto_a1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 18
    invoke-static {v8, v6}, Lcom/aide/ui/util/FileSystem;->nw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 19
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 20
    :cond_b7
    instance-of v5, v4, Lcom/aide/ui/util/BuildGradle$ProjectDependency;

    if-eqz v5, :cond_5c

    .line 21
    check-cast v4, Lcom/aide/ui/util/BuildGradle$ProjectDependency;

    .line 22
    new-instance v5, Lcom/aide/ui/util/BuildGradleExt;

    invoke-direct {v5}, Lcom/aide/ui/util/BuildGradleExt;-><init>()V

    .line 23
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->getSettingsGradlePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-virtual {v5, v6}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/util/BuildGradleExt;

    .line 25
    invoke-virtual {v4, p0, v5}, Lcom/aide/ui/util/BuildGradle$ProjectDependency;->getProjectDependencyPath(Ljava/lang/String;Lcom/aide/ui/util/BuildGradleExt;)Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-static {v4}, Lcom/aide/ui/util/FileSystem;->isDirectory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 27
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5c

    .line 28
    :cond_e1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ff

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_ff
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_103
    :goto_103
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_103

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_103

    .line 32
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_103

    .line 33
    :cond_12b
    new-instance v1, Lcom/aide/ui/util/AndroidProprieties;

    invoke-direct {v1}, Lcom/aide/ui/util/AndroidProprieties;-><init>()V

    .line 34
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->getProjectProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/util/AndroidProprieties;

    .line 35
    iget-object v1, v1, Lcom/aide/ui/util/AndroidProprieties;->Zo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_140
    :goto_140
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_160

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/util/AndroidProprieties$a;

    .line 36
    invoke-virtual {v2, p0}, Lcom/aide/ui/util/AndroidProprieties$a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v2}, Lcom/aide/ui/util/FileSystem;->isDirectory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_140

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_140

    .line 38
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_140

    .line 39
    :cond_160
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/ui/util/FileSystem;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a5

    .line 40
    new-instance v1, Lcom/aide/ui/util/ClassPath;

    invoke-direct {v1}, Lcom/aide/ui/util/ClassPath;-><init>()V

    .line 41
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/util/ClassPath;

    iget-object v1, v1, Lcom/aide/ui/util/ClassPath;->Zo:Ljava/util/List;

    .line 43
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17f
    :goto_17f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/util/ClassPath$Entry;

    .line 44
    invoke-virtual {v2}, Lcom/aide/ui/util/ClassPath$Entry;->v5()Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 45
    invoke-virtual {v2, p0}, Lcom/aide/ui/util/ClassPath$Entry;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v2}, Lcom/aide/ui/util/FileSystem;->isDirectory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17f

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17f

    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a4
    .catchall {:try_start_1b .. :try_end_1a4} :catchall_1a6

    goto :goto_17f

    :cond_1a5
    return-void

    :catchall_1a6
    move-exception v0

    .line 48
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_1b7

    const-wide v2, 0x6cd7f1b43a792fbL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b7
    goto :goto_1b9

    :goto_1b8
    throw v0

    :goto_1b9
    goto :goto_1b8
.end method

.method private pN(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x13e981f04e918f90L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x8aef0f8de54d580L  # -5.500500045848604E266

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Lcom/aide/ui/project/AndroidProjectSupport;->oy(Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-direct {p0, v1, p2, p3}, Lcom/aide/ui/project/AndroidProjectSupport;->pN(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_2b

    .line 6
    :cond_3b
    invoke-static {p1}, Lcom/aide/ui/project/AndroidProjectSupport;->w9(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0, v1, p2, p3}, Lcom/aide/ui/project/AndroidProjectSupport;->pN(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    :try_end_55
    .catchall {:try_start_0 .. :try_end_55} :catchall_57

    goto :goto_43

    :cond_56
    return-void

    :catchall_57
    move-exception v0

    .line 9
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_69

    const-wide v2, -0x8aef0f8de54d580L  # -5.500500045848604E266

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_69
    goto :goto_6b

    :goto_6a
    throw v0

    :goto_6b
    goto :goto_6a
.end method

.method private pO(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x26971ab9f7deb9f8L
    .end annotation

    const-wide v0, -0x34d5fcb5f9254908L  # -1.245767938708574E54

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->I()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2
    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".classpath"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 3
    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "project.properties"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 4
    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "build.gradle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3e

    if-eqz p1, :cond_3c

    :cond_3a
    const/4 p1, 0x1

    return p1

    :cond_3c
    const/4 p1, 0x0

    return p1

    :catchall_3e
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_46

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v2
.end method

.method public static q7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/ui/util/BuildGradle$SigningConfig;
    .registers 11
    .annotation runtime Labcd/ey;
        method = 0x2d296d0ba21421b8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0xc20c82c9950d628L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/util/BuildGradle;

    .line 4
    invoke-static {p1}, Lcom/aide/ui/services/ProjectService;->KD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/util/BuildGradle;->getSigningConfig(Ljava/lang/String;)Lcom/aide/ui/util/BuildGradle$SigningConfig;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-object p0

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, -0xc20c82c9950d628L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method private static sE(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .annotation runtime Labcd/ey;
        method = -0x885c4d1cf7799f0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x5f5065c54e9399a0L  # 1.3418889924264336E151

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_21

    .line 1
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-static {p1, p2}, Lcom/aide/ui/project/AndroidProjectSupport;->kQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1d} :catch_1f
    .catchall {:try_start_10 .. :try_end_1d} :catchall_21

    const/4 p0, 0x1

    return p0

    :catch_1f
    const/4 p0, 0x0

    return p0

    :catchall_21
    move-exception v0

    .line 4
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_33

    const-wide v2, 0x5f5065c54e9399a0L  # 1.3418889924264336E151

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method private static sG(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 13
    .annotation runtime Labcd/ey;
        method = 0x4cc56414b90b1920L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/ui/util/ClassPath$Entry;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_15

    const-wide v1, -0x36a4df418d29d580L  # -2.4198900792154527E45

    const/4 v3, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->J0(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_15
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->XL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/util/ClassPath$Entry;

    .line 3
    invoke-virtual {v1, p1}, Lcom/aide/ui/util/ClassPath$Entry;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    return-void

    .line 4
    :cond_3c
    new-instance v0, Lcom/aide/ui/util/ClassPath$Entry;

    const-string v2, "lib"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, v0

    move-object v3, p0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 5
    :cond_4c
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->isDirectory(Ljava/lang/String;)Z

    move-result v0
    :try_end_50
    .catchall {:try_start_0 .. :try_end_50} :catchall_72

    if-eqz v0, :cond_71

    .line 6
    :try_start_52
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->J0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    invoke-static {v1, p1, p2, p3}, Lcom/aide/ui/project/AndroidProjectSupport;->sG(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_6c} :catch_6d
    .catchall {:try_start_52 .. :try_end_6c} :catchall_72

    goto :goto_5d

    :catch_6d
    move-exception v0

    .line 10
    :try_start_6e
    invoke-static {v0}, Lcom/aide/common/AppLog;->v5(Ljava/lang/Throwable;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    :cond_71
    :goto_71
    return-void

    :catchall_72
    move-exception v0

    .line 11
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_89

    const-wide v2, -0x36a4df418d29d580L  # -2.4198900792154527E45

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Labcd/iy;->a8(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_89
    goto :goto_8b

    :goto_8a
    throw v0

    :goto_8b
    goto :goto_8a
.end method

.method public static sg(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x547a5934b12a62b3L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x17055ccea0f1196fL  # 8.930699992595782E-198

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->cb(Ljava/lang/String;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    return p0

    :catchall_12
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_1a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v3
.end method

.method public static sy(Ljava/util/Map;)[Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x12e486f8f2a28f20L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const-wide v0, -0x32e624b88ef16d30L  # -2.6591928403303174E63

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3
    invoke-static {v5, v2}, Lcom/aide/ui/project/AndroidProjectSupport;->wc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2e
    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aide/ui/util/ClassPath$Entry;

    .line 5
    invoke-virtual {v7}, Lcom/aide/ui/util/ClassPath$Entry;->isLibKind()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-virtual {v7}, Lcom/aide/ui/util/ClassPath$Entry;->j6()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2e

    .line 6
    invoke-virtual {v7, v5}, Lcom/aide/ui/util/ClassPath$Entry;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual {v7}, Lcom/aide/ui/util/ClassPath$Entry;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 8
    :cond_56
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 9
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_6 .. :try_end_63} :catchall_64

    return-object v4

    :catchall_64
    move-exception v3

    .line 10
    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_6c

    invoke-static {v3, v0, v1, v2, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    goto :goto_6e

    :goto_6d
    throw v3

    :goto_6e
    goto :goto_6d
.end method

.method private static vJ(Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x8d0d4e68e743710L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/ui/util/ClassPath$Entry;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x2f64c90c6f0c7aa0L  # -2.0167946543901196E80

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Lcom/aide/ui/util/AndroidProprieties;

    invoke-direct {v0}, Lcom/aide/ui/util/AndroidProprieties;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->getProjectProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/util/AndroidProprieties;

    .line 4
    iget-object v0, v0, Lcom/aide/ui/util/AndroidProprieties;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/util/AndroidProprieties$a;

    .line 5
    invoke-virtual {v1, p0}, Lcom/aide/ui/util/AndroidProprieties$a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/aide/ui/util/FileSystem;->isDirectory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 7
    new-instance v2, Lcom/aide/ui/util/ClassPath$Entry;

    const-string v3, "src"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_45

    goto :goto_22

    :cond_44
    return-void

    :catchall_45
    move-exception v0

    .line 8
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, -0x2f64c90c6f0c7aa0L  # -2.0167946543901196E80

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    goto :goto_58

    :goto_57
    throw v0

    :goto_58
    goto :goto_57
.end method

.method private static w9(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation runtime Labcd/ey;
        method = -0x102b6c6ef206b82bL
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

    const/4 v0, 0x0

    const-wide v1, 0xcdb9daa09d5ebf9L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 3
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v4

    .line 4
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v4, v5}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/util/BuildGradle;

    .line 6
    iget-object v5, v4, Lcom/aide/ui/util/BuildGradle;->wearAppProject:Lcom/aide/ui/util/BuildGradle$ProjectDependency;

    if-eqz v5, :cond_49

    .line 7
    new-instance v5, Lcom/aide/ui/util/BuildGradleExt;

    invoke-direct {v5}, Lcom/aide/ui/util/BuildGradleExt;-><init>()V

    .line 8
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->getSettingsGradlePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v5, v6}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/util/BuildGradleExt;

    .line 10
    iget-object v4, v4, Lcom/aide/ui/util/BuildGradle;->wearAppProject:Lcom/aide/ui/util/BuildGradle$ProjectDependency;

    invoke-virtual {v4, p0, v5}, Lcom/aide/ui/util/BuildGradle$ProjectDependency;->getProjectDependencyPath(Ljava/lang/String;Lcom/aide/ui/util/BuildGradleExt;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v4}, Lcom/aide/ui/util/FileSystem;->isDirectory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 12
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_4a

    :cond_49
    return-object v3

    :catchall_4a
    move-exception v3

    .line 13
    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_52

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v3
.end method

.method public static wc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation runtime Labcd/ey;
        method = -0x381035af7d24949L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aide/ui/util/ClassPath$Entry;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x187e0fb736127283L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->KD(Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_1d5

    const-string v2, ".jar"

    const-string v3, "lib"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_63

    .line 3
    :try_start_1e
    new-instance v1, Lcom/aide/ui/util/ClassPath$Entry;

    const-string v7, "lib"

    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->Mr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, v0, v4}, Lcom/aide/ui/project/AndroidProjectSupport;->sG(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 5
    invoke-static {}, Lcom/aide/ui/App;->getMavenService()Lcom/aide/ui/services/MavenService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/aide/ui/services/MavenService;->J0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_43
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7
    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 8
    new-instance v7, Lcom/aide/ui/util/ClassPath$Entry;

    invoke-direct {v7, v3, v6, v5, v4}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 9
    :cond_5e
    invoke-static {v0}, Lcom/aide/ui/project/AndroidProjectSupport;->dx(Ljava/util/List;)V

    goto/16 :goto_1d4

    .line 10
    :cond_63
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/ui/util/FileSystem;->exists(Ljava/lang/String;)Z

    move-result v1
    :try_end_6b
    .catchall {:try_start_1e .. :try_end_6b} :catchall_1d5

    const-string v6, "src"

    if-eqz v1, :cond_d3

    .line 11
    :try_start_6f
    new-instance v1, Lcom/aide/ui/util/ClassPath;

    invoke-direct {v1}, Lcom/aide/ui/util/ClassPath;-><init>()V

    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/util/ClassPath;

    iget-object v1, v1, Lcom/aide/ui/util/ClassPath;->Zo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-static {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->iW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 13
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->Mr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, v0, v5}, Lcom/aide/ui/project/AndroidProjectSupport;->sG(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 14
    :cond_90
    invoke-static {v0}, Lcom/aide/ui/project/AndroidProjectSupport;->dx(Ljava/util/List;)V

    .line 15
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/aide/ui/util/FileSystem;->lp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/util/ClassPath$Entry;

    .line 17
    invoke-virtual {v3}, Lcom/aide/ui/util/ClassPath$Entry;->isSrcKind()Z

    move-result v7

    if-eqz v7, :cond_9f

    iget-object v7, v3, Lcom/aide/ui/util/ClassPath$Entry;->path:Ljava/lang/String;

    if-eqz v7, :cond_9f

    iget-object v3, v3, Lcom/aide/ui/util/ClassPath$Entry;->path:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    goto :goto_bf

    :cond_be
    const/4 v4, 0x0

    :goto_bf
    if-nez v4, :cond_1d4

    .line 18
    new-instance v1, Lcom/aide/ui/util/ClassPath$Entry;

    .line 19
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {p0, v2}, Lcom/aide/ui/util/FileSystem;->lp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2, v5}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d4

    .line 21
    :cond_d3
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v1
    :try_end_d7
    .catchall {:try_start_6f .. :try_end_d7} :catchall_1d5

    const-string v7, "output"

    if-eqz v1, :cond_187

    .line 22
    :try_start_db
    invoke-static {p0, p1}, Lcom/aide/ui/project/internal/GradleTools;->gW(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v8, v1

    const/4 v9, 0x0

    :goto_e1
    if-ge v9, v8, :cond_f4

    aget-object v10, v1, v9

    .line 23
    new-instance v11, Lcom/aide/ui/util/ClassPath$Entry;

    invoke-static {p0, v10}, Lcom/aide/ui/util/FileSystem;->lp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v6, v10, v5}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_e1

    .line 24
    :cond_f4
    new-instance v1, Lcom/aide/ui/util/ClassPath$Entry;

    .line 25
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 26
    invoke-static {p0, v8}, Lcom/aide/ui/util/FileSystem;->lp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v6, v8, v5}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v1, Lcom/aide/ui/util/ClassPath$Entry;->v5:Lcom/aide/ui/util/ClassPath$Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v1, Lcom/aide/ui/util/ClassPath$Entry;->Zo:Lcom/aide/ui/util/ClassPath$Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->k2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_116
    :goto_116
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_176

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aide/ui/util/BuildGradle$Dependency;

    .line 30
    instance-of v8, v6, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    if-eqz v8, :cond_153

    .line 31
    check-cast v6, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    .line 32
    invoke-static {}, Lcom/aide/ui/App;->getMavenService()Lcom/aide/ui/services/MavenService;

    move-result-object v8

    invoke-static {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->getFlatRepositoryPathMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/aide/ui/services/MavenService;->J8(Ljava/util/Map;Lcom/aide/ui/util/BuildGradle$MavenDependency;)Ljava/util/List;

    move-result-object v6

    .line 33
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_138
    :goto_138
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_116

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 34
    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_138

    .line 35
    new-instance v9, Lcom/aide/ui/util/ClassPath$Entry;

    invoke-direct {v9, v3, v8, v5, v4}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_138

    .line 36
    :cond_153
    instance-of v8, v6, Lcom/aide/ui/util/BuildGradle$FileTreeDependency;

    if-eqz v8, :cond_163

    .line 37
    check-cast v6, Lcom/aide/ui/util/BuildGradle$FileTreeDependency;

    .line 38
    invoke-virtual {v6, p0}, Lcom/aide/ui/util/BuildGradle$FileTreeDependency;->getDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_116

    .line 39
    invoke-static {v6, p0, v0, v5}, Lcom/aide/ui/project/AndroidProjectSupport;->sG(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_116

    .line 40
    :cond_163
    instance-of v8, v6, Lcom/aide/ui/util/BuildGradle$FilesDependency;

    if-eqz v8, :cond_116

    .line 41
    check-cast v6, Lcom/aide/ui/util/BuildGradle$FilesDependency;

    .line 42
    new-instance v8, Lcom/aide/ui/util/ClassPath$Entry;

    invoke-virtual {v6, p0}, Lcom/aide/ui/util/BuildGradle$FilesDependency;->getFilesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v3, v6, v5, v4}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_116

    .line 43
    :cond_176
    new-instance v1, Lcom/aide/ui/util/ClassPath$Entry;

    .line 44
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {p0, v2}, Lcom/aide/ui/util/FileSystem;->lp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2, v5}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d4

    .line 46
    :cond_187
    invoke-static {p0, v0}, Lcom/aide/ui/project/AndroidProjectSupport;->vJ(Ljava/lang/String;Ljava/util/List;)V

    .line 47
    invoke-static {p0, p1}, Lcom/aide/ui/project/internal/GradleTools;->gW(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_190
    if-ge v3, v2, :cond_1a3

    aget-object v4, v1, v3

    .line 48
    new-instance v8, Lcom/aide/ui/util/ClassPath$Entry;

    invoke-static {p0, v4}, Lcom/aide/ui/util/FileSystem;->lp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v6, v4, v5}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_190

    .line 49
    :cond_1a3
    new-instance v1, Lcom/aide/ui/util/ClassPath$Entry;

    .line 50
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->J8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {p0, v2}, Lcom/aide/ui/util/FileSystem;->lp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2, v5}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v1, Lcom/aide/ui/util/ClassPath$Entry;->v5:Lcom/aide/ui/util/ClassPath$Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v1, Lcom/aide/ui/util/ClassPath$Entry;->Zo:Lcom/aide/ui/util/ClassPath$Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lcom/aide/ui/util/ClassPath$Entry;

    .line 55
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {p0, v2}, Lcom/aide/ui/util/FileSystem;->lp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2, v5}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {p0}, Lcom/aide/ui/project/internal/GradleTools;->Mr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, v0, v5}, Lcom/aide/ui/project/AndroidProjectSupport;->sG(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_1d4
    .catchall {:try_start_db .. :try_end_1d4} :catchall_1d5

    :cond_1d4
    :goto_1d4
    return-object v0

    :catchall_1d5
    move-exception v0

    .line 58
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_1e6

    const-wide v2, 0x187e0fb736127283L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e6
    goto :goto_1e8

    :goto_1e7
    throw v0

    :goto_1e8
    goto :goto_1e7
.end method

.method public static x9()V
    .registers 16
    .annotation runtime Labcd/ey;
        method = -0x2872035f9ec1e2fL
    .end annotation

    const/4 v1, 0x0

    const-wide v2, 0x1d610dc1a3bef79dL  # 3.61503036578126E-167

    :try_start_6
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    invoke-static {v2, v3, v1}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v4}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v5
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_210

    const-string v6, "Dependency \'"

    const-string v7, "\' not found"

    const/16 v8, 0x3e8

    const/4 v9, 0x1

    if-eqz v5, :cond_c1

    .line 4
    :try_start_27
    invoke-static {v4}, Lcom/aide/ui/project/internal/GradleTools;->P8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-static {v5}, Lcom/aide/ui/util/FileSystem;->isFileAndNotZip(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 6
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v10

    check-cast v10, Lcom/aide/ui/util/BuildGradle;

    .line 7
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v12, v10, Lcom/aide/ui/util/BuildGradle;->allProjectsDependencies:Ljava/util/List;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v10, v10, Lcom/aide/ui/util/BuildGradle;->subProjectsDependencies:Ljava/util/List;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_54
    :goto_54
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/aide/ui/util/BuildGradle$Dependency;

    .line 12
    instance-of v13, v12, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    if-eqz v13, :cond_9f

    .line 13
    check-cast v12, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    .line 14
    invoke-static {}, Lcom/aide/ui/App;->getMavenService()Lcom/aide/ui/services/MavenService;

    move-result-object v13

    invoke-static {v4}, Lcom/aide/ui/project/AndroidProjectSupport;->getFlatRepositoryPathMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Lcom/aide/ui/services/MavenService;->BT(Ljava/util/Map;Lcom/aide/ui/util/BuildGradle$MavenDependency;)Z

    move-result v13

    if-nez v13, :cond_54

    .line 15
    new-instance v13, Lcom/aide/engine/SyntaxError;

    invoke-direct {v13}, Lcom/aide/engine/SyntaxError;-><init>()V

    .line 16
    iget v14, v12, Lcom/aide/ui/util/BuildGradle$LineNumber;->line:I

    iput v14, v13, Lcom/aide/engine/SyntaxError;->jw:I

    .line 17
    iput v9, v13, Lcom/aide/engine/SyntaxError;->fY:I

    .line 18
    iget v14, v12, Lcom/aide/ui/util/BuildGradle$LineNumber;->line:I

    iput v14, v13, Lcom/aide/engine/SyntaxError;->qp:I

    .line 19
    iput v8, v13, Lcom/aide/engine/SyntaxError;->k2:I

    .line 20
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v12, Lcom/aide/ui/util/BuildGradle$MavenDependency;->coords:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v13, Lcom/aide/engine/SyntaxError;->zh:Ljava/lang/String;

    .line 21
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 22
    :cond_9f
    new-instance v13, Lcom/aide/engine/SyntaxError;

    invoke-direct {v13}, Lcom/aide/engine/SyntaxError;-><init>()V

    .line 23
    iget v14, v12, Lcom/aide/ui/util/BuildGradle$LineNumber;->line:I

    iput v14, v13, Lcom/aide/engine/SyntaxError;->jw:I

    .line 24
    iput v9, v13, Lcom/aide/engine/SyntaxError;->fY:I

    .line 25
    iget v12, v12, Lcom/aide/ui/util/BuildGradle$LineNumber;->line:I

    iput v12, v13, Lcom/aide/engine/SyntaxError;->qp:I

    .line 26
    iput v8, v13, Lcom/aide/engine/SyntaxError;->k2:I

    const-string v12, "Unexpected dependency"

    .line 27
    iput-object v12, v13, Lcom/aide/engine/SyntaxError;->zh:Ljava/lang/String;

    .line 28
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 29
    :cond_b8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c1

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_c1
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/services/ProjectService;->BT()Ljava/util/Map;

    move-result-object v4

    .line 31
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_206

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 32
    invoke-static {v5}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1fe

    .line 33
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-static {v5}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 35
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v12

    check-cast v12, Lcom/aide/ui/util/BuildGradle;

    .line 36
    iget-object v12, v12, Lcom/aide/ui/util/BuildGradle;->dependencies:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_fd
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1f5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/aide/ui/util/BuildGradle$Dependency;

    .line 37
    instance-of v14, v13, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    if-eqz v14, :cond_148

    .line 38
    move-object v14, v13

    check-cast v14, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    .line 39
    invoke-static {}, Lcom/aide/ui/App;->getMavenService()Lcom/aide/ui/services/MavenService;

    move-result-object v15

    invoke-static {v5}, Lcom/aide/ui/project/AndroidProjectSupport;->getFlatRepositoryPathMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v15, v1, v14}, Lcom/aide/ui/services/MavenService;->BT(Ljava/util/Map;Lcom/aide/ui/util/BuildGradle$MavenDependency;)Z

    move-result v1

    if-nez v1, :cond_148

    .line 40
    new-instance v1, Lcom/aide/engine/SyntaxError;

    invoke-direct {v1}, Lcom/aide/engine/SyntaxError;-><init>()V

    .line 41
    iget v15, v14, Lcom/aide/ui/util/BuildGradle$LineNumber;->line:I

    iput v15, v1, Lcom/aide/engine/SyntaxError;->jw:I

    .line 42
    iput v9, v1, Lcom/aide/engine/SyntaxError;->fY:I

    .line 43
    iget v15, v14, Lcom/aide/ui/util/BuildGradle$LineNumber;->line:I

    iput v15, v1, Lcom/aide/engine/SyntaxError;->qp:I

    .line 44
    iput v8, v1, Lcom/aide/engine/SyntaxError;->k2:I

    .line 45
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v14, Lcom/aide/ui/util/BuildGradle$MavenDependency;->coords:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/aide/engine/SyntaxError;->zh:Ljava/lang/String;

    .line 46
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_148
    instance-of v1, v13, Lcom/aide/ui/util/BuildGradle$FilesDependency;

    if-eqz v1, :cond_185

    .line 48
    move-object v1, v13

    check-cast v1, Lcom/aide/ui/util/BuildGradle$FilesDependency;

    .line 49
    invoke-virtual {v1, v5}, Lcom/aide/ui/util/BuildGradle$FilesDependency;->getFilesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/aide/ui/util/FileSystem;->exists(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_185

    .line 50
    new-instance v14, Lcom/aide/engine/SyntaxError;

    invoke-direct {v14}, Lcom/aide/engine/SyntaxError;-><init>()V

    .line 51
    iget v15, v1, Lcom/aide/ui/util/BuildGradle$LineNumber;->line:I

    iput v15, v14, Lcom/aide/engine/SyntaxError;->jw:I

    .line 52
    iput v9, v14, Lcom/aide/engine/SyntaxError;->fY:I

    .line 53
    iget v15, v1, Lcom/aide/ui/util/BuildGradle$LineNumber;->line:I

    iput v15, v14, Lcom/aide/engine/SyntaxError;->qp:I

    .line 54
    iput v8, v14, Lcom/aide/engine/SyntaxError;->k2:I

    .line 55
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File dependency \'"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/aide/ui/util/BuildGradle$FilesDependency;->filesPath:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/aide/engine/SyntaxError;->zh:Ljava/lang/String;

    .line 56
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_185
    instance-of v1, v13, Lcom/aide/ui/util/BuildGradle$ProjectDependency;

    if-eqz v1, :cond_1d1

    .line 58
    move-object v1, v13

    check-cast v1, Lcom/aide/ui/util/BuildGradle$ProjectDependency;

    .line 59
    new-instance v2, Lcom/aide/ui/util/BuildGradleExt;

    invoke-direct {v2}, Lcom/aide/ui/util/BuildGradleExt;-><init>()V

    .line 60
    invoke-static {v5}, Lcom/aide/ui/project/internal/GradleTools;->getSettingsGradlePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/util/BuildGradleExt;

    .line 62
    invoke-virtual {v1, v5, v2}, Lcom/aide/ui/util/BuildGradle$ProjectDependency;->getProjectDependencyPath(Ljava/lang/String;Lcom/aide/ui/util/BuildGradleExt;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d1

    .line 63
    new-instance v2, Lcom/aide/engine/SyntaxError;

    invoke-direct {v2}, Lcom/aide/engine/SyntaxError;-><init>()V

    .line 64
    iget v3, v1, Lcom/aide/ui/util/BuildGradle$LineNumber;->line:I

    iput v3, v2, Lcom/aide/engine/SyntaxError;->jw:I

    .line 65
    iput v9, v2, Lcom/aide/engine/SyntaxError;->fY:I

    .line 66
    iget v3, v1, Lcom/aide/ui/util/BuildGradle$LineNumber;->line:I

    iput v3, v2, Lcom/aide/engine/SyntaxError;->qp:I

    .line 67
    iput v8, v2, Lcom/aide/engine/SyntaxError;->k2:I

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Project dependency \'"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/aide/ui/util/BuildGradle$ProjectDependency;->projectName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/aide/engine/SyntaxError;->zh:Ljava/lang/String;

    .line 69
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1d1
    instance-of v1, v13, Lcom/aide/ui/util/BuildGradle$l;

    if-eqz v1, :cond_1ed

    .line 71
    new-instance v1, Lcom/aide/engine/SyntaxError;

    invoke-direct {v1}, Lcom/aide/engine/SyntaxError;-><init>()V

    .line 72
    iget v2, v13, Lcom/aide/ui/util/BuildGradle$LineNumber;->line:I

    iput v2, v1, Lcom/aide/engine/SyntaxError;->jw:I

    .line 73
    iput v9, v1, Lcom/aide/engine/SyntaxError;->fY:I

    .line 74
    iget v2, v13, Lcom/aide/ui/util/BuildGradle$LineNumber;->line:I

    iput v2, v1, Lcom/aide/engine/SyntaxError;->qp:I

    .line 75
    iput v8, v1, Lcom/aide/engine/SyntaxError;->k2:I

    const-string v2, "Unknown dependency"

    .line 76
    iput-object v2, v1, Lcom/aide/engine/SyntaxError;->zh:Ljava/lang/String;

    .line 77
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1ed
    const/4 v1, 0x0

    const-wide v2, 0x1d610dc1a3bef79dL  # 3.61503036578126E-167

    goto/16 :goto_fd

    .line 78
    :cond_1f5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1fe

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1fe
    const/4 v1, 0x0

    const-wide v2, 0x1d610dc1a3bef79dL  # 3.61503036578126E-167

    goto/16 :goto_d1

    .line 79
    :cond_206
    invoke-static {}, Lcom/aide/ui/App;->J0()Lcom/aide/ui/services/ErrorService;

    move-result-object v1

    const-string v2, "Gradle"

    invoke-virtual {v1, v2, v0}, Lcom/aide/ui/services/ErrorService;->EQ(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_20f
    .catchall {:try_start_27 .. :try_end_20f} :catchall_210

    return-void

    :catchall_210
    move-exception v0

    .line 80
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_21e

    const/4 v1, 0x0

    const-wide v2, 0x1d610dc1a3bef79dL  # 3.61503036578126E-167

    invoke-static {v0, v2, v3, v1}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21e
    goto :goto_220

    :goto_21f
    throw v0

    :goto_220
    goto :goto_21f
.end method

.method public static yO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation runtime Labcd/ey;
        method = 0x3989f33fb13724edL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x6bc6d13836b9dbf7L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/aide/ui/services/ProjectService;->BT()Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-static {p0, v1}, Labcd/xd;->FH(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/aide/ui/services/ProjectService;->KD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/aide/ui/project/internal/GradleTools;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3e

    goto :goto_25

    :cond_3d
    return-object v0

    :catchall_3e
    move-exception v0

    .line 6
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_50

    const-wide v2, -0x6bc6d13836b9dbf7L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v0

    :goto_52
    goto :goto_51
.end method

.method public static ye(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x3cc542c12de3cb9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x6f796c429c4fdf33L  # -4.653520489576916E-229

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0, p1}, Lcom/aide/ui/project/internal/GradleTools;->a8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_23

    const-wide v2, -0x6f796c429c4fdf33L  # -4.653520489576916E-229

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

.method public static zh(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x7b99bfffd36258bL
    .end annotation

    const-wide v0, -0x175e8151adb44d49L  # -1.021685792438759E196

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p0, v2}, Lcom/aide/ui/project/AndroidProjectSupport;->wc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/util/ClassPath$Entry;

    .line 4
    invoke-virtual {v5}, Lcom/aide/ui/util/ClassPath$Entry;->isLibKind()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {v5}, Lcom/aide/ui/util/ClassPath$Entry;->j6()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 5
    invoke-virtual {v5, p0}, Lcom/aide/ui/util/ClassPath$Entry;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v5}, Lcom/aide/ui/util/ClassPath$Entry;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 7
    :cond_44
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 8
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_6 .. :try_end_51} :catchall_52

    return-object v4

    :catchall_52
    move-exception v3

    .line 9
    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v4, :cond_5a

    invoke-static {v3, v0, v1, v2, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    goto :goto_5c

    :goto_5b
    throw v3

    :goto_5c
    goto :goto_5b
.end method


# virtual methods
.method public DW(Z)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0xa6311eb2f326223L
    .end annotation

    const-wide v0, -0x134a7bce1820e009L  # -4.635816636703219E215

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->Ws(JLjava/lang/Object;Z)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->er()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->getBuildVariant()Ljava/lang/String;

    move-result-object v3

    .line 3
    sget-object v4, Lcom/aide/ui/build/BuildServiceCollect;->j6:Lcom/aide/ui/build/android/AndroidProjectBuildService;

    invoke-virtual {v4, p1, v2, v3}, Lcom/aide/ui/build/android/AndroidProjectBuildService;->ca(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_2f

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public EQ()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x294f622586db2d7L
    .end annotation

    const-wide v0, -0x865de4fe9b55cbdL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    sget-object v2, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    const-string v3, "com.aide.phonegap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    return v3

    .line 2
    :cond_18
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v2

    if-eqz v2, :cond_1f

    return v3

    .line 3
    :cond_1f
    invoke-static {}, Lcom/aide/ui/App;->a8()Labcd/af;

    move-result-object v2

    invoke-virtual {v2}, Labcd/af;->Ws()Z

    move-result v2

    if-eqz v2, :cond_2a

    return v3

    .line 4
    :cond_2a
    invoke-direct {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->eU()Z

    move-result v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2f

    return v0

    :catchall_2f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public FH(Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x28de2f2bfff6e828L
    .end annotation

    const-wide v0, -0x58b5776aaff99538L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static {v2, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->fN(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 3
    :cond_26
    invoke-static {p1}, Lcom/aide/ui/project/internal/GradleTools;->nw(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-direct {p0, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->Gj(Ljava/lang/String;)Z

    move-result p1
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_3c

    if-nez p1, :cond_3a

    :cond_38
    const/4 p1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p1, 0x0

    :goto_3b
    return p1

    :catchall_3c
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method public Hw()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x4d76cd126290d98L
    .end annotation

    const-wide v0, 0xc837ba3a66d88L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->g3()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public J0(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x558f7c64284f0e0L
    .end annotation

    const-wide v0, 0x3802903570438b0L  # 8.09694399684788E-292

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_68

    .line 3
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    const/4 v3, 0x0

    .line 4
    invoke-static {v2, v3}, Lcom/aide/ui/project/AndroidProjectSupport;->wc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/util/ClassPath$Entry;

    .line 6
    invoke-virtual {v5}, Lcom/aide/ui/util/ClassPath$Entry;->isLibKind()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-virtual {v5, v2}, Lcom/aide/ui/util/ClassPath$Entry;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 7
    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_4f
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/aide/ui/util/ClassPath;->Hw(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_68

    .line 9
    :cond_57
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->getProjectProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/util/FileSystem;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 10
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->getProjectProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {v3, v2, p1}, Lcom/aide/ui/util/AndroidProprieties;->Zo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_5 .. :try_end_68} :catchall_69

    :cond_68
    :goto_68
    return-void

    :catchall_69
    move-exception v2

    .line 12
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_71

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_71
    goto :goto_73

    :goto_72
    throw v2

    :goto_73
    goto :goto_72
.end method

.method public J8()Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x36c3647eb8780850L
    .end annotation

    const-wide v0, -0x12e37e9f20d91e00L  # -3.9306446986720524E217

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->I()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    return v3

    .line 2
    :cond_18
    invoke-direct {p0}, Lcom/aide/ui/project/AndroidProjectSupport;->eU()Z

    move-result v2

    if-nez v2, :cond_1f

    return v3

    .line 3
    :cond_1f
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/aide/ui/project/AndroidProjectSupport;->kQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ".mycompany."

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_37

    if-eqz v0, :cond_35

    return v3

    :cond_35
    const/4 v0, 0x1

    return v0

    :catchall_37
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3f
    throw v2
.end method

.method public KD(Ljava/lang/String;)I
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x392dc7f275533c39L
    .end annotation

    const-wide v0, -0x2a3ebafb184cae9dL  # -1.2377443024658188E105

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p1}, Lcom/aide/ui/project/internal/GradleTools;->cb(Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1a

    if-eqz p1, :cond_16

    const p1, 0x7f0d0031

    return p1

    :cond_16
    const p1, 0x7f0d002d

    return p1

    :catchall_1a
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public Mr()V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x42400aa614333b5L
    .end annotation

    const-wide v0, -0x6b5433a354689ffL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->a8()Labcd/af;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const v4, 0x7f0d0611

    const-string v5, "large_project"

    invoke-virtual {v2, v3, v4, v5}, Labcd/af;->cn(Landroid/app/Activity;ILjava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public P8(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x20be8d9b6890aea8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x2c0a29efdf2a2c38L  # -2.9151128174251508E96

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const v2, 0x7f0d05b6

    .line 1
    invoke-static {v2, v1}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3c

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/MainActivity;->k2()V

    .line 3
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0d05b7

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {v4, v0}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v2, v0, v3}, Lcom/aide/common/MessageBox;->ei(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_b0

    :cond_3c
    const v1, 0x7f0d05bc

    new-array v2, v0, [Ljava/lang/Object;

    .line 6
    invoke-static {v1, v2}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 7
    invoke-direct {p0, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->Sf(Ljava/lang/String;)V

    goto :goto_b0

    :cond_4f
    new-array v1, v0, [Ljava/lang/Object;

    const v2, 0x7f0d05b8

    .line 8
    invoke-static {v2, v1}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 9
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/MainActivity;->k2()V

    .line 10
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    .line 11
    invoke-static {v2, v4}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0d05b9

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {v4, v0}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v1, v2, v0, v3}, Lcom/aide/common/MessageBox;->ei(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_b0

    :cond_7c
    const v1, 0x7f0d05bd

    new-array v2, v0, [Ljava/lang/Object;

    .line 14
    invoke-static {v1, v2}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 15
    invoke-direct {p0, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->ef(Ljava/lang/String;)V

    goto :goto_b0

    .line 16
    :cond_8f
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v1

    const v2, 0x7f0d05ba

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0d05bb

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v0

    .line 17
    invoke-static {v4, v5}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/aide/ui/project/AndroidProjectSupport$b;

    invoke-direct {v4, p0, p1, p2}, Lcom/aide/ui/project/AndroidProjectSupport$b;-><init>(Lcom/aide/ui/project/AndroidProjectSupport;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {v1, v2, v0, v4, v3}, Lcom/aide/common/MessageBox;->rN(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_b0
    .catchall {:try_start_0 .. :try_end_b0} :catchall_b1

    :goto_b0
    return-void

    :catchall_b1
    move-exception v0

    .line 19
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_c2

    const-wide v2, -0x2c0a29efdf2a2c38L  # -2.9151128174251508E96

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c2
    throw v0
.end method

.method public QX()Ljava/lang/String;
    .registers 18
    .annotation runtime Labcd/ey;
        method = -0x4d988f038d2e56fL
    .end annotation

    move-object/from16 v1, p0

    const-string v0, ".aar"

    const-wide v2, 0x778b26bf3e07c25L  # 1.1413200076662852E-272

    :try_start_9
    sget-boolean v4, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v4, :cond_10

    invoke-static {v2, v3, v1}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_10
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/services/ProjectService;->P8()Ljava/util/List;

    move-result-object v4

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aide/ui/services/ProjectService;->yS()Ljava/util/List;

    move-result-object v5

    const-string v6, ""

    .line 3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4
    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    goto :goto_26

    .line 5
    :cond_39
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_1a7

    const-string v9, "</b><br/><br/>"

    if-nez v8, :cond_59

    .line 6
    :try_start_41
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<b>Library "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_70

    .line 7
    :cond_59
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<b>App "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8
    :goto_70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<i>Library Projects:</i><br/><br/>"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/aide/ui/services/ProjectService;->cn(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 10
    array-length v9, v8
    :try_end_8a
    .catchall {:try_start_41 .. :try_end_8a} :catchall_1a7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_8d
    const-string v13, "<br/><br/>"

    const-string v14, "(NOT FOUND) "

    if-ge v11, v9, :cond_c6

    :try_start_93
    aget-object v15, v8, v11

    .line 11
    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_c3

    .line 12
    invoke-static {v15}, Lcom/aide/ui/util/FileSystem;->exists(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 13
    :cond_b0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_c2
    .catchall {:try_start_93 .. :try_end_c2} :catchall_1a7

    const/4 v12, 0x1

    :cond_c3
    add-int/lit8 v11, v11, 0x1

    goto :goto_8d

    :cond_c6
    const-string v9, "&lt;none&gt;<br/><br/>"

    if-nez v12, :cond_d9

    .line 14
    :try_start_ca
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 15
    :cond_d9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<i>Libraries:</i><br/><br/>"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v7}, Lcom/aide/ui/project/AndroidProjectSupport;->zh(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 17
    array-length v11, v7

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_f1
    if-ge v12, v11, :cond_125

    aget-object v15, v7, v12

    .line 18
    invoke-static {v15}, Lcom/aide/ui/util/FileSystem;->exists(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_10a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 19
    :cond_10a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v12, v12, 0x1

    const-wide v2, 0x778b26bf3e07c25L  # 1.1413200076662852E-272

    const/4 v15, 0x1

    goto :goto_f1

    .line 20
    :cond_125
    array-length v2, v8

    const/4 v3, 0x0

    :goto_127
    if-ge v3, v2, :cond_17d

    aget-object v7, v8, v3

    .line 21
    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17a

    .line 22
    invoke-static {v7}, Lcom/aide/ui/util/FileSystem;->exists(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_146

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_146
    const-string v11, ".exploded.aar"

    .line 23
    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_167

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0xd

    invoke-virtual {v7, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 24
    :cond_167
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x1

    :cond_17a
    add-int/lit8 v3, v3, 0x1

    goto :goto_127

    :cond_17d
    if-nez v15, :cond_18e

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 26
    :cond_18e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_19f
    .catchall {:try_start_ca .. :try_end_19f} :catchall_1a7

    const-wide v2, 0x778b26bf3e07c25L  # 1.1413200076662852E-272

    goto/16 :goto_26

    :cond_1a6
    return-object v6

    :catchall_1a7
    move-exception v0

    .line 27
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v2, :cond_1b4

    const-wide v2, 0x778b26bf3e07c25L  # 1.1413200076662852E-272

    invoke-static {v0, v2, v3, v1}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b4
    goto :goto_1b6

    :goto_1b5
    throw v0

    :goto_1b6
    goto :goto_1b5
.end method

.method public SI(Ljava/lang/String;Lcom/aide/common/ValueRunnable;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x37cc43233c982fb8L
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
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2ecf2fd94ffeb708L  # 3.21072827182278E-83

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p1, p2}, Labcd/be;->DW(Ljava/lang/String;Lcom/aide/common/ValueRunnable;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_21

    const-wide v2, 0x2ecf2fd94ffeb708L  # 3.21072827182278E-83

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v0
.end method

.method public U2(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = -0x12d40d3a34bb834L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x38ebd23724fa514L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    invoke-static {}, Lcom/aide/ui/App;->getMavenService()Lcom/aide/ui/services/MavenService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/services/MavenService;->ei()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/project/AndroidProjectSupport;->ca(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 3
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/project/AndroidProjectSupport;->pN(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    .line 5
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, 0x38ebd23724fa514L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public VH()[Lcom/aide/ui/services/TemplateService$TemplateGroup;
    .registers 29
    .annotation runtime Labcd/ey;
        method = 0xde174bb27a4d314L
    .end annotation

    move-object/from16 v13, p0

    const-wide v14, 0x2d0bff3a78caa0ecL  # 1.0737486001704631E-91

    :try_start_7
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_e

    invoke-static {v14, v15, v13}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_e
    new-instance v0, Lcom/aide/ui/services/TemplateService$Template;

    const/4 v3, 0x1

    const-string v4, "Android App"

    const-string v5, "Gradle/Android SDK/Java/Xml"

    const-string v6, "MyApp"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "com.aide.ui"

    const-string v10, "ANDROID"

    const-string v11, "course_android"

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_1c1

    const-string v12, "com.aide.ui"

    const/16 v16, 0x0

    const/4 v2, 0x1

    if-nez v1, :cond_36

    :try_start_2a
    sget-object v1, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_36

    :cond_33
    const/16 v17, 0x0

    goto :goto_38

    :cond_36
    :goto_36
    const/16 v17, 0x1

    :goto_38
    move-object v1, v0

    const/4 v14, 0x1

    move-object/from16 v2, p0

    move-object v15, v12

    move/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Lcom/aide/ui/services/TemplateService$Template;-><init>(Lcom/aide/ui/services/ProjectSupport;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    new-instance v1, Lcom/aide/ui/services/TemplateService$Template;

    const/4 v3, 0x1

    const-string v4, "Android App"

    const-string v5, "Eclipse/Android SDK/Java/Xml"

    const-string v6, "MyApp"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "com.aide.ui"

    const-string v10, "ANDROID"

    const-string v11, "course_android"

    .line 4
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v2

    if-nez v2, :cond_64

    sget-object v2, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    goto :goto_64

    :cond_62
    const/4 v12, 0x0

    goto :goto_65

    :cond_64
    :goto_64
    const/4 v12, 0x1

    :goto_65
    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/aide/ui/services/TemplateService$Template;-><init>(Lcom/aide/ui/services/ProjectSupport;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    new-instance v1, Lcom/aide/ui/services/TemplateService$Template;

    const/4 v3, 0x1

    const-string v4, "Wearable App"

    const-string v5, "Gradle/Android SDK/Java/Xml"

    const-string v6, "MyWearApp"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "com.aide.ui"

    const-string v10, "ANDROID"

    const-string v11, "course_wear"

    .line 6
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v2

    if-nez v2, :cond_8c

    sget-object v2, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    goto :goto_8c

    :cond_8a
    const/4 v12, 0x0

    goto :goto_8d

    :cond_8c
    :goto_8c
    const/4 v12, 0x1

    :goto_8d
    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/aide/ui/services/TemplateService$Template;-><init>(Lcom/aide/ui/services/ProjectSupport;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    new-instance v20, Lcom/aide/ui/services/TemplateService$Template;

    const/4 v3, 0x2

    const-string v4, "Mobile Game"

    const-string v5, "libGDX/Java"

    const-string v6, "MyGame"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "com.aide.ui"

    const-string v10, "GAME"

    const-string v11, "course_game"

    .line 9
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v1

    if-nez v1, :cond_b4

    sget-object v1, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    goto :goto_b4

    :cond_b2
    const/4 v12, 0x0

    goto :goto_b5

    :cond_b4
    :goto_b4
    const/4 v12, 0x1

    :goto_b5
    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/aide/ui/services/TemplateService$Template;-><init>(Lcom/aide/ui/services/ProjectSupport;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    new-instance v17, Lcom/aide/ui/services/TemplateService$Template;

    const/4 v3, 0x4

    const-string v4, "Native Android App"

    const-string v5, "Android NDK/C/Java/Xml"

    const-string v6, "MyNDKApp"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "com.aide.ui"

    const-string v10, "ANDROID_NATIVE"

    const-string v11, "course_ndk"

    .line 12
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v1

    if-nez v1, :cond_de

    sget-object v1, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    goto :goto_de

    :cond_dc
    const/4 v12, 0x0

    goto :goto_df

    :cond_de
    :goto_de
    const/4 v12, 0x1

    :goto_df
    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/aide/ui/services/TemplateService$Template;-><init>(Lcom/aide/ui/services/ProjectSupport;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    new-instance v15, Lcom/aide/ui/services/TemplateService$Template;

    const/4 v3, 0x5

    const-string v4, "PhoneGap App"

    const-string v5, "PhoneGap/Html/Css/JavaScript"

    const-string v6, "MyPhoneGapApp"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "com.aide.phonegap"

    const-string v10, "PHONEGAP"

    const/4 v11, 0x0

    .line 14
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v1
    :try_end_fa
    .catchall {:try_start_2a .. :try_end_fa} :catchall_1c1

    const-string v12, "com.aide.phonegap"

    if-nez v1, :cond_10a

    :try_start_fe
    sget-object v1, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_107

    goto :goto_10a

    :cond_107
    const/16 v18, 0x0

    goto :goto_10c

    :cond_10a
    :goto_10a
    const/16 v18, 0x1

    :goto_10c
    move-object v1, v15

    move-object/from16 v2, p0

    move-object v14, v12

    move/from16 v12, v18

    invoke-direct/range {v1 .. v12}, Lcom/aide/ui/services/TemplateService$Template;-><init>(Lcom/aide/ui/services/ProjectSupport;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    new-instance v1, Lcom/aide/ui/services/TemplateService$Template;

    const/4 v3, 0x6

    const-string v4, "Hybrid App"

    const-string v5, "Html/Css/JavaScript + Java/Xml"

    const-string v6, "MyHybridApp"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "com.aide.phonegap"

    const-string v10, "PHONEGAP_PLUGIN"

    const/4 v11, 0x0

    .line 17
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v2

    if-nez v2, :cond_136

    sget-object v2, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_134

    goto :goto_136

    :cond_134
    const/4 v12, 0x0

    goto :goto_137

    :cond_136
    :goto_136
    const/4 v12, 0x1

    :goto_137
    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/aide/ui/services/TemplateService$Template;-><init>(Lcom/aide/ui/services/ProjectSupport;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x4

    new-array v8, v1, [Lcom/aide/ui/services/TemplateService$TemplateGroup;

    .line 18
    new-instance v9, Lcom/aide/ui/services/TemplateService$TemplateGroup;

    const-string v2, "Android App"

    const v4, 0x7f070078

    const-string v5, "GradleApp.zip"

    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/String;

    const-string v1, "main.xml"

    aput-object v1, v6, v16

    const-string v1, "MainActivity.java"

    const/4 v3, 0x1

    aput-object v1, v6, v3

    const-string v7, "app"

    move-object v1, v9

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/aide/ui/services/TemplateService$TemplateGroup;-><init>(Ljava/lang/String;Lcom/aide/ui/services/TemplateService$Template;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v8, v16

    new-instance v0, Lcom/aide/ui/services/TemplateService$TemplateGroup;

    const-string v19, "Mobile Game"

    const v21, 0x7f07007a

    const-string v22, "course_game_libgdx_project.zip"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "MyGdxGame.java"

    aput-object v1, v2, v16

    const-string v24, "gdx-game-android"

    move-object/from16 v18, v0

    move-object/from16 v23, v2

    invoke-direct/range {v18 .. v24}, Lcom/aide/ui/services/TemplateService$TemplateGroup;-><init>(Ljava/lang/String;Lcom/aide/ui/services/TemplateService$Template;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-object v0, v8, v1

    new-instance v0, Lcom/aide/ui/services/TemplateService$TemplateGroup;

    const-string v22, "Native Android App"

    const v24, 0x7f070078

    const-string v25, "JniHelloWorld.zip"

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "HelloJni.java"

    aput-object v2, v1, v16

    const-string v2, "hello-jni.c"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v27, 0x0

    move-object/from16 v21, v0

    move-object/from16 v23, v17

    move-object/from16 v26, v1

    invoke-direct/range {v21 .. v27}, Lcom/aide/ui/services/TemplateService$TemplateGroup;-><init>(Ljava/lang/String;Lcom/aide/ui/services/TemplateService$Template;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v8, v10

    new-instance v0, Lcom/aide/ui/services/TemplateService$TemplateGroup;

    const-string v22, "PhoneGap App"

    const v24, 0x7f07007d

    const-string v25, "PhoneGapAppNew.zip"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "index.html"

    aput-object v3, v2, v16

    const-string v3, "index.js"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "index.css"

    aput-object v3, v2, v10

    const-string v27, "app"

    move-object/from16 v21, v0

    move-object/from16 v23, v15

    move-object/from16 v26, v2

    invoke-direct/range {v21 .. v27}, Lcom/aide/ui/services/TemplateService$TemplateGroup;-><init>(Ljava/lang/String;Lcom/aide/ui/services/TemplateService$Template;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v8, v1
    :try_end_1c0
    .catchall {:try_start_fe .. :try_end_1c0} :catchall_1c1

    return-object v8

    :catchall_1c1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_1ce

    const-wide v1, 0x2d0bff3a78caa0ecL  # 1.0737486001704631E-91

    invoke-static {v0, v1, v2, v13}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1ce
    throw v0
.end method

.method public Ws()Lcom/aide/engine/EngineSolution;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0xe1f9964e1e783fL
    .end annotation

    const-wide v0, 0x5b55afe615eea785L  # 9.62098841899572E131

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/project/internal/MakeAndroidEngineSolution;->FH()Lcom/aide/engine/EngineSolution;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public XL()Ljava/util/List;
    .registers 11
    .annotation runtime Labcd/ey;
        method = 0x39caba01854b1875L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/trainer/c$c;",
            ">;"
        }
    .end annotation

    const-string v0, "com.aide.ui"

    const-wide v1, 0x147e3947ecca2651L  # 5.745812333268724E-210

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_e
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/aide/ui/trainer/c$c;

    .line 1
    new-instance v4, Lcom/aide/ui/trainer/c$c;

    const-string v5, "course_android"

    const/16 v6, 0x1e

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-direct {v4, v5, v6, v8}, Lcom/aide/ui/trainer/c$c;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/aide/ui/trainer/c$c;

    const-string v5, "course_game"

    const/16 v6, 0x1f

    new-array v8, v7, [Ljava/lang/String;

    aput-object v0, v8, v9

    invoke-direct {v4, v5, v6, v8}, Lcom/aide/ui/trainer/c$c;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    aput-object v4, v3, v7

    const/4 v4, 0x2

    new-instance v5, Lcom/aide/ui/trainer/c$c;

    const-string v6, "course_ndk"

    const/16 v8, 0x21

    new-array v7, v7, [Ljava/lang/String;

    aput-object v0, v7, v9

    invoke-direct {v5, v6, v8, v7}, Lcom/aide/ui/trainer/c$c;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_46

    return-object v0

    :catchall_46
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_4e

    invoke-static {v0, v1, v2, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4e
    throw v0
.end method

.method public Zo(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x6307c59e62fabd5fL
    .end annotation

    const-wide v0, -0x45f9f7989590377dL  # -3.4761673280359007E-29

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p1}, Labcd/be;->j6(Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public a8(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x3627f3de36d52a1cL
    .end annotation

    const-wide v0, -0x16b9d03e66bf1c54L  # -1.3267737901603488E199

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->Gj(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->fN(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_25

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    :goto_24
    return p1

    :catchall_25
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public aM(Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x41664699972859a0L
    .end annotation

    const-wide v0, -0x31621727deaab210L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->BT()Ljava/util/Map;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3
    invoke-static {v4, p1}, Lcom/aide/ui/util/FileSystem;->nw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    return v5

    .line 4
    :cond_30
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->getBuildVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/ui/project/AndroidProjectSupport;->aj(Ljava/util/Map;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_3f
    if-ge v6, v3, :cond_4d

    aget-object v7, v2, v6

    .line 6
    invoke-static {v7, p1}, Lcom/aide/ui/util/FileSystem;->nw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_4e

    if-eqz v7, :cond_4a

    return v5

    :cond_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_4d
    return v4

    :catchall_4e
    move-exception v2

    .line 7
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_56

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    goto :goto_58

    :goto_57
    throw v2

    :goto_58
    goto :goto_57
.end method

.method public cn(Ljava/util/List;Z)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x48bc430d0a8def9L
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
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_11

    const-wide v0, -0x4b1404a369553e0bL  # -9.129514831487793E-54

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, p0, p1, v2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_18

    const/4 v4, 0x1

    goto :goto_48

    .line 1
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3
    invoke-direct {p0, v5}, Lcom/aide/ui/project/AndroidProjectSupport;->pO(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    const/4 v1, 0x1

    goto :goto_22

    .line 4
    :cond_36
    invoke-direct {p0, v5}, Lcom/aide/ui/project/AndroidProjectSupport;->Jl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3f
    const/4 v4, 0x1

    goto :goto_22

    .line 6
    :cond_41
    invoke-direct {p0, v5}, Lcom/aide/ui/project/AndroidProjectSupport;->Cz(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_3f

    :cond_48
    :goto_48
    if-eqz v1, :cond_61

    if-eqz p2, :cond_54

    .line 7
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/services/ProjectService;->CU()V

    goto :goto_68

    .line 8
    :cond_54
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/services/ProjectService;->wc()V

    .line 9
    sget-object v1, Lcom/aide/ui/build/BuildServiceCollect;->j6:Lcom/aide/ui/build/android/AndroidProjectBuildService;

    invoke-virtual {v1, v2, v0}, Lcom/aide/ui/build/android/AndroidProjectBuildService;->yO(ZLjava/util/List;)V

    goto :goto_68

    :cond_61
    if-eqz v4, :cond_68

    .line 10
    sget-object v1, Lcom/aide/ui/build/BuildServiceCollect;->j6:Lcom/aide/ui/build/android/AndroidProjectBuildService;

    invoke-virtual {v1, v2, v0}, Lcom/aide/ui/build/android/AndroidProjectBuildService;->yO(ZLjava/util/List;)V
    :try_end_68
    .catchall {:try_start_0 .. :try_end_68} :catchall_69

    :cond_68
    :goto_68
    return-void

    :catchall_69
    move-exception v0

    .line 11
    sget-boolean v1, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v1, :cond_7e

    const-wide v2, -0x4b1404a369553e0bL  # -9.129514831487793E-54

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7e
    goto :goto_80

    :goto_7f
    throw v0

    :goto_80
    goto :goto_7f
.end method

.method public ei(Ljava/lang/String;)V
    .registers 19
    .annotation runtime Labcd/ey;
        method = 0x25adb8be128c6b4bL
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    const-wide v12, 0x2e07d035719c892fL  # 5.985371722097084E-87

    :try_start_9
    sget-boolean v0, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v0, :cond_10

    invoke-static {v12, v13, v1, v14}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    const-string v2, "com.aide.phonegap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_20
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string v2, "www"

    invoke-static {v14, v2}, Lcom/aide/ui/util/FileSystem;->Ws(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v14}, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->FH(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e4

    .line 3
    :cond_3b
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    const-string v2, "com.aide.ui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    :cond_4b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 4
    invoke-static {}, Lcom/aide/ui/App;->isTrainerMode()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_cd

    .line 5
    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mf;->j3()Lcom/aide/ui/trainer/c$b;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/App;->U2()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd

    .line 7
    invoke-virtual {v0}, Lcom/aide/ui/trainer/c$d;->XL()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v7

    invoke-virtual {v7}, Labcd/mf;->Mr()Lcom/aide/ui/trainer/c$e;

    move-result-object v7

    invoke-virtual {v7}, Lcom/aide/ui/trainer/c$e;->VH()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v8

    invoke-virtual {v8}, Labcd/mf;->Mr()Lcom/aide/ui/trainer/c$e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/aide/ui/trainer/c$e;->FH()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v9

    invoke-virtual {v9}, Labcd/mf;->vy()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v10

    .line 10
    invoke-virtual {v10}, Labcd/mf;->a8()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v11

    .line 11
    invoke-virtual {v11}, Labcd/mf;->er()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v15

    invoke-virtual {v15}, Labcd/mf;->Mr()Lcom/aide/ui/trainer/c$e;

    move-result-object v15

    .line 12
    invoke-virtual {v15}, Lcom/aide/ui/trainer/c$e;->QX()Z

    move-result v15

    if-eqz v15, :cond_bb

    .line 13
    invoke-static {}, Lcom/aide/ui/AppPreferences;->Ws()Z

    move-result v15

    if-eqz v15, :cond_bb

    const/4 v15, 0x1

    goto :goto_bc

    :cond_bb
    const/4 v15, 0x0

    :goto_bc
    invoke-static {}, Lcom/aide/ui/AppPreferences;->J8()Z

    move-result v16

    move-object v2, v4

    move-object v3, v5

    move-object/from16 v4, p1

    move v5, v6

    move-object v6, v0

    move v12, v15

    move/from16 v13, v16

    .line 14
    invoke-static/range {v2 .. v13}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->Sf(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_e4

    .line 15
    :cond_cd
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/App;->U2()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/App;->a8()Labcd/af;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Labcd/af;->Mr()Z

    move-result v5

    if-nez v5, :cond_e0

    goto :goto_e1

    :cond_e0
    const/4 v2, 0x0

    .line 17
    :goto_e1
    invoke-static {v0, v4, v14, v2, v3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->sG(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_e4
    .catchall {:try_start_9 .. :try_end_e4} :catchall_e5

    :cond_e4
    :goto_e4
    return-void

    :catchall_e5
    move-exception v0

    .line 18
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v2, :cond_f2

    const-wide v2, 0x2e07d035719c892fL  # 5.985371722097084E-87

    invoke-static {v0, v2, v3, v1, v14}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f2
    throw v0
.end method

.method public er(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x16a44a8c46452adL
    .end annotation

    const-wide v0, 0x43a84ef1fc81151L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p1}, Lcom/aide/ui/project/AndroidProjectSupport;->iW(Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public gW()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0xfdccdfcda21f6d4L
    .end annotation

    const-wide v0, 0x7e03a7bbe473bcL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

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
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public getProductFlavors(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x220022bd503f0590L
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

    const-wide v0, -0xc38c22bfa0ac800L  # -5.2000902895166405E249

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p1}, Lcom/aide/ui/project/internal/GradleTools;->isAndroidProject(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2
    invoke-static {p1}, Lcom/aide/ui/project/internal/GradleTools;->tp(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_17
    invoke-static {p1}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 4
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v2

    invoke-static {p1}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/util/BuildGradle;

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/aide/ui/util/BuildGradle;->productFlavorMap:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_40

    if-lez p1, :cond_3e

    return-object v3

    :cond_3e
    const/4 p1, 0x0

    return-object p1

    :catchall_40
    move-exception v2

    .line 7
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v2
.end method

.method public gn()V
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x49a9ebda2610d03L
    .end annotation

    const-wide v0, -0x67883d7030228a1L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    sget-object v2, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    const-string v3, "com.aide.phonegap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->a8()Labcd/af;

    move-result-object v2

    invoke-virtual {v2}, Labcd/af;->QX()Z

    move-result v2

    if-nez v2, :cond_5d

    invoke-static {}, Lcom/aide/ui/App;->a8()Labcd/af;

    move-result-object v2

    invoke-virtual {v2}, Labcd/af;->Ws()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 3
    invoke-static {}, Lcom/aide/common/AndroidHelper;->er()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 4
    :cond_30
    invoke-static {}, Lcom/aide/ui/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/aide/ui/project/AndroidProjectSupport;->sE(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 5
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const v3, 0x7f0d05c7

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    .line 6
    invoke-static {v3, v6}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0d05c6

    new-array v5, v5, [Ljava/lang/Object;

    .line 7
    invoke-static {v6, v5}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v2, v3, v5, v4}, Lcom/aide/ui/MainActivity;->sM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_5e

    :cond_5d
    return-void

    :catchall_5e
    move-exception v2

    .line 9
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_66

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_66
    throw v2
.end method

.method public j3(Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x19278c50396e846bL
    .end annotation

    const-wide v0, 0x2b7a417a7bf1a897L  # 3.0010020013260226E-99

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    .line 2
    :cond_14
    sget-object v2, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    const-string v4, "com.aide.ui"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return v3

    .line 3
    :cond_1f
    sget-object v2, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    const-string v3, "com.aide.phonegap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 4
    invoke-static {p1}, Lcom/aide/ui/project/AndroidProjectSupport;->sg(Ljava/lang/String;)Z

    move-result p1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_30

    return p1

    :cond_2e
    const/4 p1, 0x0

    return p1

    :catchall_30
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method public j6()V
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x898c9abb1a9cf0L
    .end annotation

    const-wide v0, -0x55bff6e5ca62d880L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->a8()Labcd/af;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/App;->gn()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "export_apk"

    invoke-virtual {v2, v3, v4}, Labcd/af;->VH(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/aide/ui/services/OpenFileService;->KD(ZZ)V

    .line 3
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->aM()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3c

    .line 4
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v3, Labcd/ld;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Labcd/ld;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/aide/common/MessageBox;->gW(Landroid/app/Activity;Lcom/aide/common/MessageBox;)V

    goto :goto_54

    .line 5
    :cond_3c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "main"

    .line 6
    invoke-interface {v4, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "Choose Flavor"

    new-instance v5, Lcom/aide/ui/project/AndroidProjectSupport$e;

    invoke-direct {v5, p0}, Lcom/aide/ui/project/AndroidProjectSupport$e;-><init>(Lcom/aide/ui/project/AndroidProjectSupport;)V

    invoke-static {v2, v3, v4, v5}, Lcom/aide/common/MessageBox;->VH(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ValueRunnable;)V
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_55

    :cond_54
    :goto_54
    return-void

    :catchall_55
    move-exception v2

    .line 8
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_5d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5d
    throw v2
.end method

.method public lg()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x13a9f18b15c07ab0L
    .end annotation

    const-wide v0, -0x3634fd13bf75bda0L  # -3.084158655279404E47

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->nw(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public mb()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x74a0590b7c31220L
    .end annotation

    const-wide v0, 0xb3b81f4ed9984d0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->Sf()I

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1d

    const/16 v1, 0x67

    if-gt v0, v1, :cond_1b

    const/16 v0, 0x19

    return v0

    :cond_1b
    const/4 v0, 0x5

    return v0

    :catchall_1d
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public nw(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x3d92c58edf42446cL
    .end annotation

    const-wide v0, 0x3d4654801f58ff74L  # 1.5866476128298798E-13

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v3
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_7c

    const/4 v4, 0x0

    const-string v5, ".jar"

    if-eqz v3, :cond_4f

    .line 3
    :try_start_1d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_7b

    .line 4
    :cond_28
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v3

    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/util/BuildGradle;

    .line 5
    invoke-virtual {v2, p1}, Lcom/aide/ui/util/BuildGradle;->addProjectDependency(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->CU()V

    .line 7
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "Library has been added"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_7b

    .line 8
    :cond_4f
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    const/4 v3, 0x0

    .line 9
    invoke-static {v2, v3}, Lcom/aide/ui/project/AndroidProjectSupport;->wc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 10
    new-instance v5, Lcom/aide/ui/util/ClassPath$Entry;

    const-string v6, "lib"

    invoke-static {v2, p1}, Lcom/aide/ui/util/FileSystem;->lp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lcom/aide/ui/util/ClassPath$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/aide/ui/util/ClassPath;->Hw(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_7b

    .line 12
    :cond_74
    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->getProjectProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v3, v2, p1}, Lcom/aide/ui/util/AndroidProprieties;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_1d .. :try_end_7b} :catchall_7c

    :goto_7b
    return-void

    :catchall_7c
    move-exception v2

    .line 14
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_84

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_84
    throw v2
.end method

.method public qp()Ljava/util/List;
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x203dba0293072100L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aide/ui/util/BuildGradle$MavenDependency;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x2feba545222230e0L  # -5.892200264846926E77

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->BT()Ljava/util/Map;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-static {v4}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 5
    invoke-static {v4}, Lcom/aide/ui/project/AndroidProjectSupport;->k2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aide/ui/util/BuildGradle$Dependency;

    .line 6
    instance-of v7, v6, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    if-eqz v7, :cond_3b

    .line 7
    check-cast v6, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    .line 8
    invoke-static {}, Lcom/aide/ui/App;->getMavenService()Lcom/aide/ui/services/MavenService;

    move-result-object v7

    invoke-static {v4}, Lcom/aide/ui/project/AndroidProjectSupport;->getFlatRepositoryPathMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/aide/ui/services/MavenService;->er(Ljava/util/Map;Lcom/aide/ui/util/BuildGradle$MavenDependency;)Ljava/util/List;

    move-result-object v6

    .line 9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aide/ui/util/BuildGradle$MavenDependency;

    .line 10
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catchall {:try_start_5 .. :try_end_6c} :catchall_6e

    goto :goto_5d

    :cond_6d
    return-object v2

    :catchall_6e
    move-exception v2

    .line 11
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_76

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_76
    goto :goto_78

    :goto_77
    throw v2

    :goto_78
    goto :goto_77
.end method

.method public rN(Ljava/lang/String;)I
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x23d0bba6723bcffL
    .end annotation

    const-wide v0, 0x2be495e15ba0ac43L  # 3.0117033707346575E-97

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p1}, Labcd/be;->Hw(Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public ro(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation runtime Labcd/ey;
        method = -0x305301183924984L
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

    const-wide v0, -0x31d0f9c578ec3c4cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f0d05b8

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 2
    invoke-static {v3, v5}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0d05b6

    new-array v5, v4, [Ljava/lang/Object;

    .line 3
    invoke-static {v3, v5}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {p1}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    const v3, 0x7f0d05bc

    new-array v5, v4, [Ljava/lang/Object;

    .line 5
    invoke-static {v3, v5}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0d05bd

    new-array v4, v4, [Ljava/lang/Object;

    .line 6
    invoke-static {v3, v4}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/aide/ui/ExtendLibraries;->j6()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_50

    :cond_4f
    return-object v2

    :catchall_50
    move-exception v2

    .line 8
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_58

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v2
.end method

.method public sh(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x11b6d0ce73b0dbdL
    .end annotation

    const-string v0, "/"

    const-wide v1, 0xa83f90ba27d129L

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_e
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->BT()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/services/ProjectService;->getBuildVariant()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v3, v4}, Lcom/aide/ui/project/AndroidProjectSupport;->aj(Ljava/util/Map;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_37
    array-length v0, v3

    const/4 v4, 0x0

    :goto_39
    if-ge v4, v0, :cond_56

    aget-object v5, v3, v4

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v5}, Lcom/aide/ui/util/FileSystem;->exists(Ljava/lang/String;)Z

    move-result v6
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_58

    if-eqz v6, :cond_53

    return-object v5

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_56
    const/4 p1, 0x0

    return-object p1

    :catchall_58
    move-exception v0

    .line 8
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_60

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    goto :goto_62

    :goto_61
    throw v0

    :goto_62
    goto :goto_61
.end method

.method public tp(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/ey;
        method = -0x2c27e99f5b983a4fL
    .end annotation

    const-wide v0, -0xa0cfb065a20846bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    return-object v3

    .line 2
    :cond_14
    invoke-virtual {p0, p1}, Lcom/aide/ui/project/AndroidProjectSupport;->j3(Ljava/lang/String;)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_36

    const-string v4, "com.aide.phonegap"

    const-string v5, "com.aide.ui"

    if-nez v2, :cond_26

    .line 3
    :try_start_1e
    invoke-static {p1}, Lcom/aide/ui/project/AndroidProjectSupport;->sg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    return-object v4

    :cond_25
    return-object v5

    .line 4
    :cond_26
    sget-object v2, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {p1}, Lcom/aide/ui/project/AndroidProjectSupport;->sg(Ljava/lang/String;)Z

    move-result p1
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_36

    if-eqz p1, :cond_35

    return-object v4

    :cond_35
    return-object v3

    :catchall_36
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v2
.end method

.method public u7(Ljava/lang/String;)Z
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x4a1fafceb8ed6781L
    .end annotation

    const-wide v0, 0x223207b13991c775L  # 5.775624684840683E-144

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1e

    sget-object v2, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    const-string v5, "com.aide.phonegap"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, ".html"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "www"

    .line 2
    invoke-static {p1, v2}, Lcom/aide/ui/util/FileSystem;->Ws(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    return v3

    .line 3
    :cond_35
    invoke-static {}, Lcom/aide/ui/App;->ca()Z

    move-result v2

    if-nez v2, :cond_45

    sget-object v2, Lcom/aide/ui/App;->P8:Ljava/lang/String;

    const-string v5, "com.aide.ui"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    :cond_45
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, ".xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 4
    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "layout"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string v2, "res"

    .line 5
    invoke-static {p1, v2}, Lcom/aide/ui/util/FileSystem;->Ws(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_67
    .catchall {:try_start_5 .. :try_end_67} :catchall_6d

    if-eqz p1, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v3, 0x0

    :goto_6b
    return v3

    :cond_6c
    return v4

    :catchall_6d
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_75

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    throw v2
.end method

.method public v5(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x14609ee5bc627f9L
    .end annotation

    const-wide v0, 0x506753ba5c0f889dL  # 2.160871430259346E79

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->BT()Ljava/util/Map;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->getBuildVariant()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v2, v3, v4}, Lcom/aide/ui/project/AndroidProjectSupport;->Ev(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_27

    return-object p1

    .line 5
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_48

    return-object p1

    :catchall_48
    move-exception v2

    .line 6
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_50

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    throw v2
.end method

.method public vy(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x866db50f739505L
    .end annotation

    const-wide v0, 0xc3f2814ac5b3cd7L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p1}, Lcom/aide/ui/project/internal/GradleTools;->sh(Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public we(Ljava/lang/String;)I
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x30d68336fc167f48L
    .end annotation

    const-wide v0, -0x337446802ac3d938L  # -5.568965683853818E60

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {p1}, Labcd/be;->FH(Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public yS()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x2c809e77616814fL
    .end annotation

    const-wide v0, -0x70537bf83e2fd10dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->getCurrentAppHome()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/services/ProjectService;->getBuildVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/ui/project/AndroidProjectSupport;->kQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object v0

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method
