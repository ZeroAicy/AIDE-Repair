.class public Lcom/aide/ui/project/AndroidProjectSupport$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aide/common/ValueRunnable;


# annotations
.annotation runtime Labcd/cy;
    clazz = 0x47553db7db20a379L
    container = -0x66df21c1892d81d8L
    user = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/project/AndroidProjectSupport;->Sf(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ValueRunnable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic DW:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field

.field private static synthetic FH:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field


# instance fields
.field final synthetic j6:Ljava/lang/String;
    .annotation runtime Labcd/dy;
        field = -0x1e8140c89e30d19bL
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/project/AndroidProjectSupport$c;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/project/AndroidProjectSupport;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Labcd/ey;
        method = -0x27537697d03af53L
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/aide/ui/project/AndroidProjectSupport$c;->j6:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x17a46a457cabb8b4L
    .end annotation

    const-wide v0, 0x32533ee3bc63680fL  # 2.8554451848949934E-66

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport$c;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/project/AndroidProjectSupport$c;->j6:Ljava/lang/String;

    .line 2
    invoke-static {v3}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v2, v3}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/util/BuildGradle;

    .line 4
    invoke-virtual {v2, p1}, Lcom/aide/ui/util/BuildGradle;->addProjectDependency(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->CU()V

    .line 6
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "Library has been added"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v2

    .line 8
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport$c;->FH:Z

    if-eqz v3, :cond_3e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Labcd/ey;
        method = -0x4a7cbab0e292ee33L
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/ui/project/AndroidProjectSupport$c;->DW(Ljava/lang/String;)V

    return-void
.end method
