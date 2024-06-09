.class public Lcom/aide/ui/project/AndroidProjectSupport$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/cy;
    clazz = -0x22e3d249b9849f00L
    container = -0x66df21c1892d81d8L
    user = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/project/AndroidProjectSupport$d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field private static synthetic fY:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field

.field private static synthetic jw:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field


# instance fields
.field final synthetic WB:Ljava/util/List;
    .annotation runtime Labcd/dy;
        field = 0x4674f3038b69b607L
    .end annotation
.end field

.field final synthetic mb:Lcom/aide/ui/project/AndroidProjectSupport$d$a;
    .annotation runtime Labcd/dy;
        field = 0x4972c046bd0e710L
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/project/AndroidProjectSupport$d$a$a;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/project/AndroidProjectSupport$d$a;Ljava/util/List;)V
    .registers 3
    .annotation runtime Labcd/ey;
        method = 0x2062aea4e054299cL
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/aide/ui/project/AndroidProjectSupport$d$a$a;->mb:Lcom/aide/ui/project/AndroidProjectSupport$d$a;

    iput-object p2, p0, Lcom/aide/ui/project/AndroidProjectSupport$d$a$a;->WB:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xf4c7c7521b10924L
    .end annotation

    const-wide v0, 0x17437455cd4f42e7L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/project/AndroidProjectSupport$d$a$a;->jw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getOpenFileService()Lcom/aide/ui/services/OpenFileService;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/project/AndroidProjectSupport$d$a$a;->WB:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/aide/ui/services/OpenFileService;->er(Ljava/util/List;)V

    .line 2
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getBuildGradle()Lcom/aide/ui/util/BuildGradle;
    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/project/AndroidProjectSupport$d$a$a;->mb:Lcom/aide/ui/project/AndroidProjectSupport$d$a;

    iget-object v3, v3, Lcom/aide/ui/project/AndroidProjectSupport$d$a;->jw:Lcom/aide/ui/project/AndroidProjectSupport$d;

    iget-object v3, v3, Lcom/aide/ui/project/AndroidProjectSupport$d;->j6:Ljava/lang/String;

    .line 3
    invoke-static {v3}, Lcom/aide/ui/project/internal/GradleTools;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v3}, Lcom/aide/ui/util/Configuration;->getConfiguration(Ljava/lang/String;)Lcom/aide/ui/util/Configuration;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/util/BuildGradle;

    iget-object v3, p0, Lcom/aide/ui/project/AndroidProjectSupport$d$a$a;->mb:Lcom/aide/ui/project/AndroidProjectSupport$d$a;

    iget-object v3, v3, Lcom/aide/ui/project/AndroidProjectSupport$d$a;->mb:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v3}, Lcom/aide/ui/util/BuildGradle;->addProductFlavor(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getProjectService()Lcom/aide/ui/services/ProjectService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/services/ProjectService;->ko()V

    .line 7
    invoke-static {}, Lcom/aide/ui/ServiceContainer;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "Build flavor has been added"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    return-void

    :catchall_47
    move-exception v2

    .line 9
    sget-boolean v3, Lcom/aide/ui/project/AndroidProjectSupport$d$a$a;->fY:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4f
    throw v2
.end method
