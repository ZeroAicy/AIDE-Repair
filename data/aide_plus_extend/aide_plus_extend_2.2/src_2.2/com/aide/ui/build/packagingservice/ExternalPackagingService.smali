.class public Lcom/aide/ui/build/packagingservice/ExternalPackagingService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Labcd/cy;
    clazz = -0x5a6cd60c697856dbL
    container = -0x5a6cd60c697856dbL
    user = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/build/packagingservice/ExternalPackagingService$f;,
        Lcom/aide/ui/build/packagingservice/ExternalPackagingService$e;,
        Lcom/aide/ui/build/packagingservice/ExternalPackagingService$d;,
        Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;,
        Lcom/aide/ui/build/packagingservice/ExternalPackagingService$b;,
        Lcom/aide/ui/build/packagingservice/ExternalPackagingService$a;
    }
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
.field protected WB:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;
    .annotation runtime Labcd/dy;
        field = 0xbcf7186e79303c1L
    .end annotation
.end field

.field private final mb:Lcom/aide/ui/build/packagingservice/IExternalPackagingService$Sub;
    .annotation runtime Labcd/dy;
        field = 0x104743ba248468bdL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x965d33bd25e7ea0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x58e4a757816c8c7L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->jw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v3, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;-><init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService;)V

    iput-object v3, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->WB:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;

    .line 3
    new-instance v3, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$a;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$a;-><init>(Lcom/aide/ui/build/packagingservice/ExternalPackagingService;)V

    iput-object v3, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->mb:Lcom/aide/ui/build/packagingservice/IExternalPackagingService$Sub;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->fY:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method static synthetic j6(Lcom/aide/ui/build/packagingservice/ExternalPackagingService;)Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x129eb39053d60e50L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->WB:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 14
    .annotation runtime Labcd/ey;
        method = -0x540c9bc642327a8L
    .end annotation

    const-wide v1, 0x1783b0adcb7L

    const-wide v10, 0x59178b223312bbb8L

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

    sget-boolean v0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->jw:Z

    if-eqz v0, :cond_21

    invoke-static {v10, v11, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalPackagingService bound - pid "

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
    iget-object p1, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->mb:Lcom/aide/ui/build/packagingservice/IExternalPackagingService$Sub;
    :try_end_47
    .catchall {:try_start_a .. :try_end_47} :catchall_48

    return-object p1

    :catchall_48
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->fY:Z

    if-eqz v1, :cond_50

    invoke-static {v0, v10, v11, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    throw v0
.end method

.method public onDestroy()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x1e3cfcd580b03f17L
    .end annotation

    const-wide v0, -0x31cde9b6fa860bb3L  # -4.876259496838007E68

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->jw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExternalPackagingService shutdown - pid "

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
    iget-object v2, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->WB:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;

    invoke-virtual {v2}, Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;->we()V

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->WB:Lcom/aide/ui/build/packagingservice/ExternalPackagingService$ExternalPackagingServiceWorker;
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    return-void

    :catchall_39
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;->fY:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v2
.end method
