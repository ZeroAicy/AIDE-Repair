.class public Labcd/v9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Labcd/fg;
.implements Labcd/bg;


# annotations
.annotation runtime Labcd/cy;
    clazz = 0x1298307f917b3980L
    container = 0x1298307f917b3980L
    user = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/v9$a;
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

    const-class v0, Labcd/v9;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1b257fccc74d44c8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x6814401eea64bbefL

    :try_start_6
    sget-boolean v3, Labcd/v9;->j6:Z

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

    sget-boolean v4, Labcd/v9;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public DW(Z)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1475930edb523625L
    .end annotation

    const-wide v0, -0x257639ac853ca80L

    :try_start_5
    sget-boolean v2, Labcd/v9;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->Ws(JLjava/lang/Object;Z)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getFileBrowserService()Lcom/aide/ui/services/FileBrowserService;

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

    sget-boolean v3, Labcd/v9;->DW:Z

    if-eqz v3, :cond_2d

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public FH()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x1e95b4654b214c1fL
    .end annotation

    const-wide v0, 0x2f502309bd273f80L  # 8.505902491221837E-81

    :try_start_5
    sget-boolean v2, Labcd/v9;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    :cond_c
    const v0, 0x7f0800ab

    return v0

    :catchall_10
    move-exception v2

    .line 1
    sget-boolean v3, Labcd/v9;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x312e78e468bc1e0fL
    .end annotation

    const-wide v0, 0x238efa909ff6d880L

    :try_start_5
    sget-boolean v2, Labcd/v9;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const-string v0, "Files - Delete"
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    .line 1
    sget-boolean v3, Labcd/v9;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public isEnabled()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x14f6057e82d734e7L
    .end annotation

    const-wide v0, -0xe21749201c5f8f4L  # -3.1823773091253837E240

    :try_start_5
    sget-boolean v2, Labcd/v9;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v2}, Labcd/v9;->DW(Z)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return v0

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/v9;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public run()Z
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0xa07e33ca6ac23fbL
    .end annotation

    const-wide v0, -0x1b67fa04ea691448L

    :try_start_5
    sget-boolean v2, Labcd/v9;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getFileBrowserService()Lcom/aide/ui/services/FileBrowserService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/FileBrowserService;->FH()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const v4, 0x7f0d05d3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f0d05d2

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v6, v8}, Lcom/aide/ui/App;->KD(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Labcd/v9$a;

    invoke-direct {v6, p0, v2}, Labcd/v9$a;-><init>(Labcd/v9;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v3, v4, v5, v6, v2}, Lcom/aide/common/MessageBox;->rN(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_38

    return v7

    :catchall_38
    move-exception v2

    .line 3
    sget-boolean v3, Labcd/v9;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method

.method public v5()Lcom/aide/common/KeyStroke;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1db44912eb067a78L
    .end annotation

    const-wide v0, -0x4430036edf71d61fL  # -1.3546847573518018E-20

    :try_start_5
    sget-boolean v2, Labcd/v9;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Lcom/aide/common/KeyStroke;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4, v4}, Lcom/aide/common/KeyStroke;-><init>(IZZZ)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v2

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/v9;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
