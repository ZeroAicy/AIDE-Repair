.class public abstract Lcom/aide/ui/build/OutputConsoleActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation runtime Labcd/cy;
    clazz = 0xa1c6947f77ec70dL
    container = 0xa1c6947f77ec70dL
    user = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/build/OutputConsoleActivity$a;,
        Lcom/aide/ui/build/OutputConsoleActivity$b;,
        Lcom/aide/ui/build/OutputConsoleActivity$c;,
        Lcom/aide/ui/build/OutputConsoleActivity$d;
    }
.end annotation


# static fields
.field private static synthetic AL:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field

.field private static synthetic zh:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field


# instance fields
.field protected WB:Lcom/aide/ui/build/OutputConsole;
    .annotation runtime Labcd/dy;
        field = 0x1050928372597f20L
    .end annotation
.end field

.field private fY:I
    .annotation runtime Labcd/dy;
        field = -0x36a5068f3a0fea1bL
    .end annotation
.end field

.field private jw:Landroid/media/SoundPool;
    .annotation runtime Labcd/dy;
        field = -0x26cd057152a111b0L
    .end annotation
.end field

.field private k2:Lcom/aide/common/TextToSpeechHelper;
    .annotation runtime Labcd/dy;
        field = 0x20f88b9fa45f5fd0L
    .end annotation
.end field

.field protected mb:Landroid/os/Handler;
    .annotation runtime Labcd/dy;
        field = 0x1d3545f6d6b10cebL
    .end annotation
.end field

.field private qp:I
    .annotation runtime Labcd/dy;
        field = -0x1b630458baf1386cL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1938b140075f0dd0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x67e568b7e0bb2b34L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/build/OutputConsoleActivity;)I
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0xa60ae9169c2f4ddL
    .end annotation

    .line 1
    iget p0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->qp:I

    return p0
.end method

.method static synthetic FH(Lcom/aide/ui/build/OutputConsoleActivity;)Landroid/media/SoundPool;
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x1960e08f2102851cL
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->jw:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic Hw(Lcom/aide/ui/build/OutputConsoleActivity;)Lcom/aide/common/TextToSpeechHelper;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0xb5b38973c2eb823L
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->k2:Lcom/aide/common/TextToSpeechHelper;

    return-object p0
.end method

.method private J0()V
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x30563b1de3562999L
    .end annotation

    const-wide v0, -0x2f5af403652b9e58L  # -3.1194312055975817E80

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsoleActivity;->mb:Landroid/os/Handler;

    new-instance v3, Lcom/aide/ui/build/OutputConsoleActivity$b;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/OutputConsoleActivity$b;-><init>(Lcom/aide/ui/build/OutputConsoleActivity;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public static J8(Landroid/content/Intent;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1d363e356dafb17L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x6a86886d6dc18660L  # 1.4129426496450827E205

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "EXTRA_TRAINER_ACTION"

    const/4 v4, 0x0

    .line 1
    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v3

    invoke-virtual {v3}, Labcd/mf;->Sf()Z

    move-result v3

    if-nez v3, :cond_28

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v3

    invoke-virtual {v3}, Labcd/mf;->oY()V

    goto :goto_2f

    .line 3
    :cond_28
    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v3

    invoke-virtual {v3}, Labcd/mf;->lp()V
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_30

    :goto_2f
    return-void

    :catchall_30
    move-exception v3

    .line 4
    sget-boolean v4, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v4, :cond_38

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v3
.end method

.method public static QX(Landroid/app/Activity;ZILandroid/content/Intent;)V
    .registers 13
    .annotation runtime Labcd/ey;
        method = 0xbacae177c43cc80L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v0, :cond_19

    const-wide v1, 0xe0d40f676cb2689L  # 5.483971472547244E-241

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->J0(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    const-string v0, "EXTRA_THEME"

    .line 1
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "EXTRA_LANGUAGE"

    .line 2
    invoke-static {}, Lcom/aide/ui/App;->U2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/aide/ui/App;->isTrainerMode()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 4
    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mf;->j3()Lcom/aide/ui/trainer/c$b;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v1

    invoke-virtual {v1}, Labcd/mf;->Mr()Lcom/aide/ui/trainer/c$e;

    move-result-object v1

    const-string v2, "EXTRA_TRAINER"

    const/4 v3, 0x1

    .line 6
    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "EXTRA_SOUND"

    .line 7
    invoke-static {}, Lcom/aide/ui/AppPreferences;->J8()Z

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "EXTRA_SPEAK"

    .line 8
    invoke-static {}, Lcom/aide/ui/AppPreferences;->Ws()Z

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "EXTRA_HEADER"

    .line 9
    invoke-virtual {v0}, Lcom/aide/ui/trainer/c$d;->XL()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EXTRA_TRAINER_HEADER_ICON"

    .line 10
    invoke-virtual {v0}, Lcom/aide/ui/trainer/c$d;->Hw()I

    move-result v0

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_LOCALE"

    .line 11
    invoke-virtual {v1}, Lcom/aide/ui/trainer/c$e;->VH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_OUTPUT"

    .line 12
    invoke-virtual {v1}, Lcom/aide/ui/trainer/c$e;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_FAIL"

    .line 13
    invoke-virtual {v1}, Lcom/aide/ui/trainer/c$e;->tp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_FAIL_BUTTON"

    .line 14
    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mf;->lg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_SUCCESS"

    .line 15
    invoke-virtual {v1}, Lcom/aide/ui/trainer/c$e;->J8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_FAIL_TITLE"

    .line 16
    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v1

    invoke-virtual {v1}, Labcd/mf;->rN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_SUCCESS_TITLE"

    .line 17
    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v1

    invoke-virtual {v1}, Labcd/mf;->yS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_SUCCESS_BUTTON"

    .line 18
    invoke-static {}, Lcom/aide/ui/App;->ro()Labcd/mf;

    move-result-object v1

    invoke-virtual {v1}, Labcd/mf;->BT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_cc

    :cond_c3
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->isEnableSplitScreenConsole()Z

    move-result v0

    if-eqz v0, :cond_38
    
    const v0, 0x18001000

    .line 20
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_38
    .line 21
    invoke-static {p0, p3}, Lcom/aide/ui/build/OutputConsoleActivity;->j6(Ljava/lang/Object;Landroid/content/Intent;)V
    :try_end_cc
    .catchall {:try_start_0 .. :try_end_cc} :catchall_cd

    :goto_cc
    return-void

    :catchall_cd
    move-exception v0

    .line 22
    sget-boolean v1, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v1, :cond_e8

    const-wide v2, 0xe0d40f676cb2689L  # 5.483971472547244E-241

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/iy;->a8(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e8
    throw v0
.end method

.method private Ws()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1978d779672f9859L
    .end annotation

    const-wide v0, 0x21aab8c6f8be9d0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    .line 1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1c

    .line 3
    :try_start_13
    invoke-virtual {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->XL()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_1c

    goto :goto_1b

    :catch_17
    move-exception v2

    .line 4
    :try_start_18
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    :goto_1b
    return-void

    :catchall_1c
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method static synthetic Zo(Lcom/aide/ui/build/OutputConsoleActivity;)I
    .registers 1
    .annotation runtime Labcd/ey;
        method = 0x12b8ee04cc1c64e5L
    .end annotation

    .line 1
    iget p0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->fY:I

    return p0
.end method

.method private aM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 14
    .annotation runtime Labcd/ey;
        method = -0x1b5786e3f2e47dc3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x1aea6bb9ffe8d30L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/iy;->J0(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->WB:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f080132

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080134

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080131

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_46

    const/16 v5, 0x8

    .line 7
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4d

    .line 8
    :cond_46
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_4d
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->J0(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 12
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->J8(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 13
    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->tp(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, 0x7f080133

    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 15
    new-instance v5, Lcom/aide/ui/build/OutputConsoleActivity$c;

    invoke-direct {v5, p0, p4}, Lcom/aide/ui/build/OutputConsoleActivity$c;-><init>(Lcom/aide/ui/build/OutputConsoleActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance v5, Lcom/aide/ui/build/OutputConsoleActivity$d;

    invoke-direct {v5, p0, v4}, Lcom/aide/ui/build/OutputConsoleActivity$d;-><init>(Lcom/aide/ui/build/OutputConsoleActivity;Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 17
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->tp()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->U2(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42400000  # 48.0f

    mul-float v5, v5, v4

    float-to-int v5, v5

    const/high16 v6, 0x41d80000  # 27.0f

    mul-float v4, v4, v6

    float-to-int v4, v4

    .line 19
    invoke-virtual {v3, v5, v4, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    :cond_a2
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->gn(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 21
    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 22
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 23
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 25
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->WB:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->ro()V
    :try_end_c3
    .catchall {:try_start_0 .. :try_end_c3} :catchall_c4

    return-void

    :catchall_c4
    move-exception v0

    .line 26
    sget-boolean v1, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v1, :cond_d7

    const-wide v2, 0x1aea6bb9ffe8d30L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/iy;->a8(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d7
    throw v0
.end method

.method private static synthetic j6(Ljava/lang/Object;Landroid/content/Intent;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0, p1}, Labcd/iy;->BT(Ljava/lang/Object;Landroid/content/Intent;)V

    return-void
.end method

.method private tp()Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xe43ef69ce8b22dbL
    .end annotation

    const-wide v0, -0x2eeb9862c3bd32d0L  # -3.871060490723847E82

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method static synthetic v5(Lcom/aide/ui/build/OutputConsoleActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1702448af362d6e3L
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/build/OutputConsoleActivity;->aM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private we()V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0xc219e40f1e4ed98L
    .end annotation

    const-wide v0, -0x3f9f77e5a02f0907L  # -132.25321951688218

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "EXTRA_TRAINER_ACTION"

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, -0x1

    .line 3
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsoleActivity;->mb:Landroid/os/Handler;

    new-instance v3, Lcom/aide/ui/build/OutputConsoleActivity$a;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/OutputConsoleActivity$a;-><init>(Lcom/aide/ui/build/OutputConsoleActivity;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v2

    .line 5
    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method


# virtual methods
.method protected EQ()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2c443b0b37116c99L
    .end annotation

    const-wide v0, 0x751b191743e3760L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 2
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->tp()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER_OUTPUT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_38

    .line 5
    iget-object v3, p0, Lcom/aide/ui/build/OutputConsoleActivity;->WB:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v3, v2}, Lcom/aide/ui/build/OutputConsole;->ko(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 6
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->J0()V

    goto :goto_3b

    .line 7
    :cond_34
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->we()V

    goto :goto_3b

    .line 8
    :cond_38
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->J0()V
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    :cond_3b
    :goto_3b
    return-void

    :catchall_3c
    move-exception v2

    .line 9
    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method protected VH()Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x375e963827601b89L
    .end annotation

    const-wide v0, -0x51b0c6ba16ad9864L  # -1.2556711903879764E-85

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_SOUND"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method protected abstract XL()V
    .annotation runtime Labcd/ey;
        method = 0xcce0b7eae534a25L
    .end annotation
.end method

.method protected gn()Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x3b707b6ace0d6604L
    .end annotation

    const-wide v0, -0x4de57e07b7cdf9bbL  # -2.458062608592571E-67

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_SPEAK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .annotation runtime Labcd/ey;
        method = -0x981cd28881f5573L
    .end annotation

    const-wide v1, 0x1783b0adcb7L

    const-wide v10, -0x9e22d61ab80e20L

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

    sget-boolean v0, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v0, :cond_21

    invoke-static {v10, v11, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_LANGUAGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aide/common/AndroidHelper;->cn(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_THEME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4b

    const v1, 0x7f0e0004

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_51

    :cond_4b
    const v1, 0x7f0e0003

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 5
    :goto_51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x5

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const v1, 0x7f0a0036

    .line 9
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 10
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->tp()Z

    move-result v1

    if-nez v1, :cond_7c

    const v1, 0x7f080130

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/common/AndroidHelper;->KD(Landroid/view/View;)V

    .line 12
    :cond_7c
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->tp()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-static {p0}, Lcom/aide/common/AndroidHelper;->U2(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 14
    :cond_8f
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/aide/ui/build/OutputConsoleActivity;->mb:Landroid/os/Handler;

    const v1, 0x7f08012f

    .line 15
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/build/OutputConsole;

    iput-object v1, p0, Lcom/aide/ui/build/OutputConsoleActivity;->WB:Lcom/aide/ui/build/OutputConsole;

    .line 16
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->tp()Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/aide/ui/build/OutputConsole;->Ev(ZZ)V

    .line 17
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->tp()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "EXTRA_TRAINER_HEADER_ICON"

    const v4, 0x7f070078

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_HEADER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v0, v1, v3}, Lcom/aide/common/TrainerLogo;->j6(Landroid/app/ActionBar;I[Ljava/lang/String;)V

    .line 21
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->jw:Landroid/media/SoundPool;

    const v1, 0x7f0c0004

    .line 22
    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->fY:I

    .line 23
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->jw:Landroid/media/SoundPool;

    const v1, 0x7f0c0001

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->qp:I

    .line 24
    new-instance v0, Lcom/aide/common/TextToSpeechHelper;

    invoke-direct {v0, p0}, Lcom/aide/common/TextToSpeechHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->k2:Lcom/aide/common/TextToSpeechHelper;

    goto :goto_105

    .line 25
    :cond_f1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->u7()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, "Program Output"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    :goto_105
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->Ws()V
    :try_end_108
    .catchall {:try_start_a .. :try_end_108} :catchall_109

    return-void

    :catchall_109
    move-exception v0

    .line 28
    sget-boolean v1, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v1, :cond_111

    invoke-static {v0, v10, v11, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_111
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x41313317fa5166d4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v0, :cond_11

    const-wide v0, 0x1fb56c3a97dafef1L  # 6.241340275905042E-156

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    invoke-static {p0, p1}, Lcom/aide/common/MessageBox;->Zo(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x1fb56c3a97dafef1L  # 6.241340275905042E-156

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method protected onDestroy()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x28492d8af738a80dL
    .end annotation

    const-wide v0, 0x1e121d41455c4f80L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsoleActivity;->k2:Lcom/aide/common/TextToSpeechHelper;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/aide/ui/build/OutputConsoleActivity;->k2:Lcom/aide/common/TextToSpeechHelper;

    invoke-virtual {v2}, Lcom/aide/common/TextToSpeechHelper;->FH()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    :cond_18
    return-void

    :catchall_19
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x6b3a5bfb41c7b10L
    .end annotation

    const-wide v0, 0x1f2f8c00bc1ca44dL  # 1.795100604095824E-158

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->zh:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_1a

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1a
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return p1

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->AL:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method protected abstract u7()I
    .annotation runtime Labcd/ey;
        method = 0x213ed726cde2ec19L
    .end annotation
.end method
