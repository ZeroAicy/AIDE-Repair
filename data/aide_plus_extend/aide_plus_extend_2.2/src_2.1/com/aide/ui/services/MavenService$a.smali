.class public Lcom/aide/ui/services/MavenService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/cy;
    clazz = -0xe28ac8fdbfa81a8L
    container = 0x1227d23c1060aa1L
    user = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/services/MavenService;->nw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field private static jw:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field

.field private static mb:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field


# instance fields
.field final synthetic WB:Lcom/aide/ui/services/MavenService;
    .annotation runtime Labcd/dy;
        field = -0x1e095a5906f50f15L
    .end annotation

    .annotation runtime Labcd/hy;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/services/MavenService$a;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/services/MavenService;)V
    .registers 2
    .annotation runtime Labcd/ey;
        method = 0x40a53e89022b2fb9L
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/aide/ui/services/MavenService$a;->WB:Lcom/aide/ui/services/MavenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x212194aaa7e46831L
    .end annotation

    const-wide v0, 0x4a4cb3f15f44b2b8L  # 8.389867594375903E49

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/services/MavenService$a;->mb:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_22

    .line 1
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/services/MavenService$a;->WB:Lcom/aide/ui/services/MavenService;

    invoke-static {v2}, Lcom/aide/ui/services/MavenService;->j6(Lcom/aide/ui/services/MavenService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2
    invoke-static {}, Lcom/aide/ui/services/MavenService;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/util/FileSystem;->VH(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_1d
    .catchall {:try_start_c .. :try_end_1c} :catchall_22

    goto :goto_21

    :catch_1d
    move-exception v2

    .line 3
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    :goto_21
    return-void

    :catchall_22
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/services/MavenService$a;->jw:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method
