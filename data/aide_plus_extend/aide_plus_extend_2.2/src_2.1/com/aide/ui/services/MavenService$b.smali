.class public Lcom/aide/ui/services/MavenService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/cy;
    clazz = -0xe290bafbcacd77bL
    container = 0x1227d23c1060aa1L
    user = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/services/MavenService;->nw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# static fields
.field private static WB:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field

.field private static mb:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/services/MavenService$b;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/services/MavenService;)V
    .registers 2
    .annotation runtime Labcd/ey;
        method = -0x63713b8bc168ce69L
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x1105a1d86a680961L
    .end annotation

    const-wide v0, 0x4a5bcdf7c38445afL  # 1.6254565052769183E50

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/MavenService$b;->WB:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->CU()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/services/MavenService$b;->mb:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method
