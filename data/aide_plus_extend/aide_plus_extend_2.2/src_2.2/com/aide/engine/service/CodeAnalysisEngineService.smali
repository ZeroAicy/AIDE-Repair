.class public Lcom/aide/engine/service/CodeAnalysisEngineService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Labcd/cy;
    clazz = 0x1bd72709e548b1bdL
    container = 0x1bd72709e548b1bdL
    user = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/engine/service/CodeAnalysisEngineService$d;,
        Lcom/aide/engine/service/CodeAnalysisEngineService$c;,
        Lcom/aide/engine/service/CodeAnalysisEngineService$b;,
        Lcom/aide/engine/service/CodeAnalysisEngineService$a;,
        Lcom/aide/engine/service/CodeAnalysisEngineService$CodeAnalysisEngineServiceImpl;
    }
.end annotation


# static fields
.field private static AL:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field

.field private static zh:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field


# instance fields
.field private final codeAnalysisEngineServiceSub:Lcom/aide/engine/service/ICodeAnalysisEngineService$Sub;
    .annotation runtime Labcd/dy;
        field = -0x26ba846adb20dfefL
    .end annotation
.end field

.field private codeCompletionListener:Lcom/aide/engine/service/ICodeCompletionListener;
    .annotation runtime Labcd/dy;
        field = 0x11267aa1b7c5738L
    .end annotation
.end field

.field private engine:Lcom/aide/engine/Engine;
    .annotation runtime Labcd/dy;
        field = 0x14ad76456dd91667L
    .end annotation
.end field

.field private engineListener:Lcom/aide/engine/service/IEngineListener;
    .annotation runtime Labcd/dy;
        field = -0x22197fee01f72f0bL
    .end annotation
.end field

.field private gotoSymbolListener:Lcom/aide/engine/service/IGotoSymbolListener;
    .annotation runtime Labcd/dy;
        field = 0x1e7d2fab91ec78b0L
    .end annotation
.end field

.field private mb:Lcom/aide/engine/service/INavigationListener;
    .annotation runtime Labcd/dy;
        field = -0x1f9b3b3873bf440fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1a59ae3e5e9d2290L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xa4b5e9b45916375L  # -9.912537588380035E258

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/service/CodeAnalysisEngineService;->zh:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v3, Lcom/aide/engine/service/CodeAnalysisEngineService$CodeAnalysisEngineServiceImpl;

    invoke-direct {v3, p0}, Lcom/aide/engine/service/CodeAnalysisEngineService$CodeAnalysisEngineServiceImpl;-><init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V

    iput-object v3, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->codeAnalysisEngineServiceSub:Lcom/aide/engine/service/ICodeAnalysisEngineService$Sub;

    .line 3
    new-instance v3, Lcom/aide/engine/Engine;

    new-instance v4, Lcom/aide/engine/service/CodeAnalysisEngineService$b;

    invoke-direct {v4, p0}, Lcom/aide/engine/service/CodeAnalysisEngineService$b;-><init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V

    invoke-direct {v3, v4}, Lcom/aide/engine/Engine;-><init>(Lcom/aide/engine/e;)V

    iput-object v3, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->engine:Lcom/aide/engine/Engine;

    .line 4
    new-instance v4, Lcom/aide/engine/service/CodeAnalysisEngineService$c;

    invoke-direct {v4, p0}, Lcom/aide/engine/service/CodeAnalysisEngineService$c;-><init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V

    invoke-virtual {v3, v4}, Lcom/aide/engine/Engine;->Do(Lcom/aide/engine/c;)V

    .line 5
    iget-object v3, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->engine:Lcom/aide/engine/Engine;

    new-instance v4, Lcom/aide/engine/service/CodeAnalysisEngineService$d;

    invoke-direct {v4, p0}, Lcom/aide/engine/service/CodeAnalysisEngineService$d;-><init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V

    invoke-virtual {v3, v4}, Lcom/aide/engine/Engine;->Sx(Lcom/aide/engine/d0;)V
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v3

    .line 6
    sget-boolean v4, Lcom/aide/engine/service/CodeAnalysisEngineService;->AL:Z

    if-eqz v4, :cond_3e

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    throw v3
.end method

.method static DW(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/IEngineListener;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0xc627914aa095c17L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->engineListener:Lcom/aide/engine/service/IEngineListener;

    return-object p0
.end method

.method static FH(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/IEngineListener;)Lcom/aide/engine/service/IEngineListener;
    .registers 2
    .annotation runtime Labcd/ey;
        method = -0x63f23ab71820e47L
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->engineListener:Lcom/aide/engine/service/IEngineListener;

    return-object p1
.end method

.method static Hw(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/IGotoSymbolListener;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0xde715b24a17d150L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->gotoSymbolListener:Lcom/aide/engine/service/IGotoSymbolListener;

    return-object p0
.end method

.method static VH(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/INavigationListener;)Lcom/aide/engine/service/INavigationListener;
    .registers 2
    .annotation runtime Labcd/ey;
        method = 0x11a4839f26324b4dL
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->mb:Lcom/aide/engine/service/INavigationListener;

    return-object p1
.end method

.method static Zo(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/INavigationListener;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0xed8611ca07fce75L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->mb:Lcom/aide/engine/service/INavigationListener;

    return-object p0
.end method

.method static gn(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/ICodeCompletionListener;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0xd63d4b315bd8338L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->codeCompletionListener:Lcom/aide/engine/service/ICodeCompletionListener;

    return-object p0
.end method

.method private static j6(Ljava/lang/Object;ILandroid/app/Notification;)V
    .registers 4

    move-object v0, p0

    check-cast v0, Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    invoke-static {p0, p1, p2}, Labcd/iy;->P8(Ljava/lang/Object;ILandroid/app/Notification;)V

    return-void
.end method

.method static tp(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/Engine;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0xbed506315a14cf9L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->engine:Lcom/aide/engine/Engine;

    return-object p0
.end method

.method static u7(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/ICodeCompletionListener;)Lcom/aide/engine/service/ICodeCompletionListener;
    .registers 2
    .annotation runtime Labcd/ey;
        method = -0x120848240da92828L
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->codeCompletionListener:Lcom/aide/engine/service/ICodeCompletionListener;

    return-object p1
.end method

.method static v5(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/IGotoSymbolListener;)Lcom/aide/engine/service/IGotoSymbolListener;
    .registers 2
    .annotation runtime Labcd/ey;
        method = 0x62bc67a2efa231fL
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->gotoSymbolListener:Lcom/aide/engine/service/IGotoSymbolListener;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 14
    .annotation runtime Labcd/ey;
        method = -0x1b53cf1a421dd20L
    .end annotation

    const-wide v1, 0x1783b0adcb7L

    const-wide v10, -0x5390c828c98acfd1L  # -1.1692253599142233E-94

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "fe5d2222"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "https://probes.probelytics.com/project/iF0snISTR5Ko3hbTUY88bg/audience/dev/current.probes"

    const-string v8, "https://probes.probelytics.com/project/iF0snISTR5Ko3hbTUY88bg/audience/public/current.probes"

    const-string v9, "https://ingest.probelytics.com/api/report/v1alpha1/data/project/iF0snISTR5Ko3hbTUY88bg"

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Labcd/iy;->VH(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/engine/service/CodeAnalysisEngineService;->zh:Z

    if-eqz v0, :cond_21

    invoke-static {v10, v11, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine service bound - pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AppLog;->VH(Ljava/lang/String;)V

    .line 2
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "4.4."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 3
    invoke-static {p0}, Lcom/aide/ui/MainActivity;->sy(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "engine"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    const v2, 0x1080079

    .line 6
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "Code Analysis"

    .line 7
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "Code analysis engine is active"

    .line 8
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 9
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, -0x2

    .line 10
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 11
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x26f5

    .line 12
    invoke-static {p0, v1, v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Ljava/lang/Object;ILandroid/app/Notification;)V

    .line 13
    :cond_81
    new-instance v0, Lcom/aide/engine/service/CodeAnalysisEngineService$a;

    invoke-direct {v0, p0}, Lcom/aide/engine/service/CodeAnalysisEngineService$a;-><init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V

    invoke-static {v0}, Lcom/aide/codemodel/api/abstraction/DebuggerResourceProvider;->setDefProvider(Lcom/aide/codemodel/api/abstraction/DebuggerResourceProvider;)V

    .line 14
    iget-object p1, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->codeAnalysisEngineServiceSub:Lcom/aide/engine/service/ICodeAnalysisEngineService$Sub;
    :try_end_8b
    .catchall {:try_start_a .. :try_end_8b} :catchall_8c

    return-object p1

    :catchall_8c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/CodeAnalysisEngineService;->AL:Z

    if-eqz v1, :cond_94

    invoke-static {v0, v10, v11, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_94
    throw v0
.end method

.method public onCreate()V
    .registers 13
    .annotation runtime Labcd/ey;
        method = 0x24bf33efbed81cffL
    .end annotation

    const-wide v1, 0x1783b0adcb7L

    const-wide v10, -0x135425d3eefdd950L  # -3.0004539543238873E215

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "fe5d2222"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "https://probes.probelytics.com/project/iF0snISTR5Ko3hbTUY88bg/audience/dev/current.probes"

    const-string v8, "https://probes.probelytics.com/project/iF0snISTR5Ko3hbTUY88bg/audience/public/current.probes"

    const-string v9, "https://ingest.probelytics.com/api/report/v1alpha1/data/project/iF0snISTR5Ko3hbTUY88bg"

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Labcd/iy;->VH(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/engine/service/CodeAnalysisEngineService;->zh:Z

    if-eqz v0, :cond_21

    invoke-static {v10, v11, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, Lcom/aide/engine/service/Native;->j6:Lcom/aide/engine/service/Native;

    invoke-virtual {v0, p0}, Lcom/aide/engine/service/Native;->init(Landroid/content/Context;)V
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/aide/engine/service/CodeAnalysisEngineService;->AL:Z

    if-eqz v1, :cond_32

    invoke-static {v0, v10, v11, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public onDestroy()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x3618334b92961dafL
    .end annotation

    const-wide v0, -0x32ba8b76d9ddc0c0L  # -1.7652329274091258E64

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/CodeAnalysisEngineService;->zh:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Engine service destroyed - pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/AppLog;->VH(Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->engine:Lcom/aide/engine/Engine;

    invoke-virtual {v2}, Lcom/aide/engine/Engine;->wa()V

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lcom/aide/engine/service/CodeAnalysisEngineService;->engine:Lcom/aide/engine/Engine;
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    return-void

    :catchall_39
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/engine/service/CodeAnalysisEngineService;->AL:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v2
.end method

.method public onTrimMemory(I)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1a6d6984fd0f5acbL
    .end annotation

    const-wide v0, -0xeca6c9f22871cf0L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/CodeAnalysisEngineService;->zh:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTrimMemory - level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/AppLog;->VH(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/engine/service/CodeAnalysisEngineService;->AL:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method
