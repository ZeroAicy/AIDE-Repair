.class public Lcom/aide/ui/project/internal/MakeJavaEngineSolution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Labcd/cy;
    clazz = -0x3cfc93d5ea777c28L
    container = -0x3cfc93d5ea777c28L
    user = true
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

    const-class v0, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x7c0861a97bb7d7bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x14451316c9e049b1L  # 5.008085073883393E-211

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->j6:Z

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

    sget-boolean v4, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/engine/EngineSolution;
    .registers 11
    .annotation runtime Labcd/ey;
        method = -0xf070bde2b8367b4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x114435983ceab3d0L  # -2.571671031417966E225

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    new-instance v0, Lcom/aide/ui/util/ClassPath;

    invoke-direct {v0}, Lcom/aide/ui/util/ClassPath;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/aide/ui/project/JavaProjectSupport;->g3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/util/ClassPath;

    iget-object v0, v0, Lcom/aide/ui/util/ClassPath;->Zo:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {p0, v0}, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->Hw(Ljava/lang/String;Ljava/util/List;)Lcom/aide/engine/EngineSolutionProject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_37

    .line 6
    invoke-static {p2}, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->v5(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 7
    :cond_37
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->isEnableAndroidApi()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-static {p1}, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->v5(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e
    
    :cond_38
    invoke-static {p1}, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->j6(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :goto_3e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_42
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/util/ClassPath$Entry;

    .line 9
    invoke-virtual {v3}, Lcom/aide/ui/util/ClassPath$Entry;->isLibKind()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 10
    invoke-static {p0, v3, v0}, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->FH(Ljava/lang/String;Lcom/aide/ui/util/ClassPath$Entry;Ljava/util/List;)Lcom/aide/engine/EngineSolutionProject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 11
    :cond_5c
    new-instance v0, Lcom/aide/engine/EngineSolution;

    const/4 v2, 0x0

    .line 12
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->Hw()Ljava/util/List;

    move-result-object v3

    .line 13
    invoke-static {v3}, Lcom/aide/engine/service/CodeModelFactory;->j6(Ljava/util/List;)Ljava/util/TreeMap;

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->Hw()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/engine/EngineSolution;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/List;)V
    :try_end_6e
    .catchall {:try_start_0 .. :try_end_6e} :catchall_6f

    return-object v0

    :catchall_6f
    move-exception v0

    .line 15
    sget-boolean v1, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->DW:Z

    if-eqz v1, :cond_81

    const-wide v2, -0x114435983ceab3d0L  # -2.571671031417966E225

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_81
    goto :goto_83

    :goto_82
    throw v0

    :goto_83
    goto :goto_82
.end method

.method private static FH(Ljava/lang/String;Lcom/aide/ui/util/ClassPath$Entry;Ljava/util/List;)Lcom/aide/engine/EngineSolutionProject;
    .registers 26
    .annotation runtime Labcd/ey;
        method = -0x6920d05d637b419L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/ui/util/ClassPath$Entry;",
            "Ljava/util/List<",
            "Lcom/aide/ui/util/ClassPath$Entry;",
            ">;)",
            "Lcom/aide/engine/EngineSolutionProject;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->j6:Z

    if-eqz v0, :cond_13

    const-wide v1, -0x1369b361840e6c8dL  # -1.201124486571689E215

    const/4 v3, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_13
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_87

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    .line 2
    :try_start_1c
    invoke-virtual {v1, v3}, Lcom/aide/ui/util/ClassPath$Entry;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3
    new-instance v0, Lcom/aide/engine/EngineSolution$File;

    const-string v11, "Java Binary"

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v9, v0

    move-object v10, v7

    invoke-direct/range {v9 .. v14}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/util/ClassPath$Entry;

    .line 6
    invoke-virtual {v2}, Lcom/aide/ui/util/ClassPath$Entry;->isLibKind()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 7
    invoke-virtual {v2}, Lcom/aide/ui/util/ClassPath$Entry;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_53
    const-string v0, "rt.jar"

    .line 8
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v0, Lcom/aide/engine/EngineSolutionProject;

    invoke-virtual/range {p1 .. p1}, Lcom/aide/ui/util/ClassPath$Entry;->j6()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, ""

    move-object v4, v0

    move-object v6, v7

    invoke-direct/range {v4 .. v22}, Lcom/aide/engine/EngineSolutionProject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_84
    .catchall {:try_start_1c .. :try_end_84} :catchall_85

    return-object v0

    :catchall_85
    move-exception v0

    goto :goto_8c

    :catchall_87
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    :goto_8c
    move-object v7, v0

    .line 13
    sget-boolean v0, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->DW:Z

    if-eqz v0, :cond_a3

    const-wide v4, -0x1369b361840e6c8dL  # -1.201124486571689E215

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, v4

    move-object v3, v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v0 .. v6}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a3
    goto :goto_a5

    :goto_a4
    throw v7

    :goto_a5
    goto :goto_a4
.end method

.method private static Hw(Ljava/lang/String;Ljava/util/List;)Lcom/aide/engine/EngineSolutionProject;
    .registers 24
    .annotation runtime Labcd/ey;
        method = -0x203a1588d6295ea3L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/ui/util/ClassPath$Entry;",
            ">;)",
            "Lcom/aide/engine/EngineSolutionProject;"
        }
    .end annotation

    move-object/from16 v15, p0

    :try_start_2
    sget-boolean v0, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->j6:Z

    if-eqz v0, :cond_12

    const-wide v0, 0xb7d655b46117f19L

    const/4 v2, 0x0

    move-object/from16 v14, p1

    invoke-static {v0, v1, v2, v15, v14}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    :cond_12
    move-object/from16 v14, p1

    :goto_14
    const/4 v0, 0x1

    .line 1
    invoke-static {v15, v0}, Lcom/aide/ui/project/JavaProjectSupport;->vJ(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v15, v1}, Lcom/aide/ui/project/JavaProjectSupport;->vJ(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v9, v0

    move-object v10, v1

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/util/ClassPath$Entry;

    .line 6
    invoke-virtual {v0}, Lcom/aide/ui/util/ClassPath$Entry;->isSrcKind()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 7
    invoke-virtual {v0, v15}, Lcom/aide/ui/util/ClassPath$Entry;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 8
    new-instance v1, Lcom/aide/engine/EngineSolution$File;

    const-string v18, "Java"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_56
    invoke-virtual {v0}, Lcom/aide/ui/util/ClassPath$Entry;->isLibKind()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 10
    invoke-virtual {v0}, Lcom/aide/ui/util/ClassPath$Entry;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_63
    invoke-virtual {v0}, Lcom/aide/ui/util/ClassPath$Entry;->isOutputIKind()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 12
    invoke-virtual {v0, v15}, Lcom/aide/ui/util/ClassPath$Entry;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/debug"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/release"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2e

    .line 15
    :cond_90
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "rt.jar"

    .line 16
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v0, Lcom/aide/engine/EngineSolutionProject;

    const/4 v7, 0x1

    const-string v8, ""

    const-string v11, "1.5"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const-string v21, ""

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move/from16 v14, v16

    move/from16 v15, v20

    move-object/from16 v16, v21

    invoke-direct/range {v1 .. v19}, Lcom/aide/engine/EngineSolutionProject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_c6
    .catchall {:try_start_2 .. :try_end_c6} :catchall_c7

    return-object v0

    :catchall_c7
    move-exception v0

    .line 21
    sget-boolean v1, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->DW:Z

    if-eqz v1, :cond_da

    const-wide v2, 0xb7d655b46117f19L

    const/4 v4, 0x0

    move-object v1, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_da
    goto :goto_dc

    :goto_db
    throw v0

    :goto_dc
    goto :goto_db
.end method

.method private static j6(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;
    .registers 25
    .annotation runtime Labcd/ey;
        method = 0x1e70e212afdd5630L
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const-wide v12, -0x1f6074b412944adcL  # -2.7068006419047685E157

    :try_start_8
    sget-boolean v0, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->j6:Z

    if-eqz v0, :cond_f

    invoke-static {v12, v13, v14, v15}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcom/aide/engine/EngineSolution$File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Java Binary"

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Lcom/aide/engine/EngineSolution$File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/javax"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Java Binary"

    const-string v19, ""

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lcom/aide/engine/EngineSolution$File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Java Binary"

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "rt.jar"

    .line 6
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v0, Lcom/aide/engine/EngineSolutionProject;

    const-string v2, "rt.jar"

    const-string v4, "rt.jar"

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, ""

    move-object v1, v0

    move-object/from16 v3, p0

    move/from16 v12, v16

    move/from16 v13, v20

    move/from16 v14, v21

    move/from16 v15, v22

    move-object/from16 v16, v23

    invoke-direct/range {v1 .. v19}, Lcom/aide/engine/EngineSolutionProject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_b9
    .catchall {:try_start_8 .. :try_end_b9} :catchall_ba

    return-object v0

    :catchall_ba
    move-exception v0

    .line 11
    sget-boolean v1, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->DW:Z

    if-eqz v1, :cond_ca

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const-wide v3, -0x1f6074b412944adcL  # -2.7068006419047685E157

    invoke-static {v0, v3, v4, v2, v1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_ca
    throw v0
.end method

.method private static v5(Ljava/lang/String;)Lcom/aide/engine/EngineSolutionProject;
    .registers 26
    .annotation runtime Labcd/ey;
        method = -0xd0d9a7c2215e380L
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const-wide v12, 0x902dd66610b82bcL

    :try_start_8
    sget-boolean v0, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->j6:Z

    if-eqz v0, :cond_f

    invoke-static {v12, v13, v14, v15}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v7, Lcom/aide/engine/EngineSolution$File;

    const-string v3, "Java Binary"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/aide/engine/EngineSolution$File;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "rt.jar"

    .line 4
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v20, Lcom/aide/engine/EngineSolutionProject;

    const-string v2, "rt.jar"

    const-string v4, "rt.jar"

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, ""

    move-object/from16 v1, v20

    move-object/from16 v3, p0

    move-object v5, v0

    move/from16 v12, v16

    move/from16 v13, v21

    move/from16 v14, v22

    move/from16 v15, v23

    move-object/from16 v16, v24

    invoke-direct/range {v1 .. v19}, Lcom/aide/engine/EngineSolutionProject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_69
    .catchall {:try_start_8 .. :try_end_69} :catchall_6a

    return-object v20

    :catchall_6a
    move-exception v0

    .line 9
    sget-boolean v1, Lcom/aide/ui/project/internal/MakeJavaEngineSolution;->DW:Z

    if-eqz v1, :cond_7a

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const-wide v3, 0x902dd66610b82bcL

    invoke-static {v0, v3, v4, v2, v1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7a
    throw v0
.end method
