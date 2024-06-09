.class public Lcom/aide/ui/project/AndroidProjectSupport$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/cy;
    clazz = 0x4754f5d998c91b58L
    container = -0x66df21c1892d81d8L
    user = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/project/AndroidProjectSupport;->P8(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# static fields
.field private static synthetic fY:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field

.field private static synthetic qp:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field


# instance fields
.field final synthetic WB:Ljava/lang/String;
    .annotation runtime Labcd/dy;
        field = 0x11d6eade7c36df33L
    .end annotation
.end field

.field final synthetic jw:Lcom/aide/ui/project/AndroidProjectSupport;
    .annotation runtime Labcd/dy;
        field = -0x29d1378c5b97402cL
    .end annotation

    .annotation runtime Labcd/hy;
    .end annotation
.end field

.field final synthetic mb:Ljava/lang/String;
    .annotation runtime Labcd/dy;
        field = -0x27cfc8f3897c8674L
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/project/AndroidProjectSupport$b;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/project/AndroidProjectSupport;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Labcd/ey;
        method = 0x13286374f9d52449L
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/aide/ui/project/AndroidProjectSupport$b;->jw:Lcom/aide/ui/project/AndroidProjectSupport;

    iput-object p2, p0, Lcom/aide/ui/project/AndroidProjectSupport$b;->WB:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/project/AndroidProjectSupport$b;->mb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1996ccd487f59774L
    .end annotation

    const-wide v0, -0x5638ce5fee47345L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport$b;->fY:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/project/AndroidProjectSupport$b;->WB:Ljava/lang/String;

    invoke-static {v2}, Lcom/aide/ui/project/internal/GradleTools;->isGradleProject(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/project/AndroidProjectSupport$b;->WB:Ljava/lang/String;

    invoke-static {v3}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/util/BuildGradle;

    iget-object v3, p0, Lcom/aide/ui/project/AndroidProjectSupport$b;->mb:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3}, Lcom/aide/ui/util/BuildGradle;->addMavenDependency(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/aide/ui/App;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->CU()V

    .line 5
    invoke-static {}, Lcom/aide/ui/App;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "Library has been added"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_47

    .line 6
    :cond_40
    iget-object v2, p0, Lcom/aide/ui/project/AndroidProjectSupport$b;->jw:Lcom/aide/ui/project/AndroidProjectSupport;

    iget-object v3, p0, Lcom/aide/ui/project/AndroidProjectSupport$b;->mb:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aide/ui/project/AndroidProjectSupport;->cb(Lcom/aide/ui/project/AndroidProjectSupport;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_48

    :goto_47
    return-void

    :catchall_48
    move-exception v2

    .line 7
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport$b;->qp:Z

    if-eqz v3, :cond_50

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_50
    throw v2
.end method
