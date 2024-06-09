.class public Labcd/zb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aide/ui/command/MenuCommand;
.implements Lcom/aide/ui/command/KeyStrokeCommand;


# annotations
.annotation runtime Labcd/cy;
    clazz = 0x8e769c07900c709L
    container = 0x8e769c07900c709L
    user = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/zb$a;
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

    const-class v0, Labcd/zb;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x2acd02e9c2a03d08L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x60c29829f0f3f0ffL  # 1.2764672477314945E158

    :try_start_6
    sget-boolean v3, Labcd/zb;->j6:Z

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

    sget-boolean v4, Labcd/zb;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public getKeyStroke()Lcom/aide/common/KeyStroke;
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x4a166b189bbe6040L
    .end annotation

    const-wide v0, -0x3c58af54cfa44734L  # -8.4001544259740621E17

    :try_start_5
    sget-boolean v2, Labcd/zb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Lcom/aide/common/KeyStroke;

    const/16 v3, 0x2e

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/aide/common/KeyStroke;-><init>(IZZZ)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/zb;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public getMenuItemId()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x24b7fcbc63108a03L
    .end annotation

    const-wide v0, 0x42a555d12c8bd3bL

    :try_start_5
    sget-boolean v2, Labcd/zb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0800b2

    return v0

    :catchall_10
    move-exception v2

    .line 1
    sget-boolean v3, Labcd/zb;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x24af772309b506b7L
    .end annotation

    const-wide v0, 0x622d8779353ef0dL

    :try_start_5
    sget-boolean v2, Labcd/zb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const-string v0, "Files - Rename"
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    .line 1
    sget-boolean v3, Labcd/zb;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public isEnabled()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x2faff351853fcae7L
    .end annotation

    const-wide v0, 0x190e16d89368b5a1L

    :try_start_5
    sget-boolean v2, Labcd/zb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v2}, Labcd/zb;->isVisible(Z)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return v0

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/zb;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public isVisible(Z)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xf359b14e9bb18bbL
    .end annotation

    const-wide v0, 0xb5e04a1361f629fL

    :try_start_5
    sget-boolean v2, Labcd/zb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->Ws(JLjava/lang/Object;Z)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getFileBrowserService()Lcom/aide/ui/services/FileBrowserService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/FileBrowserService;->FH()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 2

    const-string v3, "invoke-static {v2}, Lcom/aide/ui/util/FileSystem;->sh(Ljava/lang/String;)Z"
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/zb;->DW:Z

    if-eqz v3, :cond_2d

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public run()Z
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x1a9db6bc9dd08f67L
    .end annotation

    const-wide v0, 0x14d252f5adcf5bbfL

    :try_start_5
    sget-boolean v2, Labcd/zb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getFileBrowserService()Lcom/aide/ui/services/FileBrowserService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/FileBrowserService;->FH()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v4

    const v5, 0x7f0d05e0

    const v6, 0x7f0d05de

    new-instance v7, Labcd/zb$a;

    invoke-direct {v7, p0, v2}, Labcd/zb$a;-><init>(Labcd/zb;Ljava/lang/String;)V

    invoke-static {v4, v5, v6, v3, v7}, Lcom/aide/common/MessageBox;->XL(Landroid/app/Activity;IILjava/lang/String;Lcom/aide/common/ValueRunnable;)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2c

    const/4 v0, 0x1

    return v0

    :catchall_2c
    move-exception v2

    .line 4
    sget-boolean v3, Labcd/zb;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method
