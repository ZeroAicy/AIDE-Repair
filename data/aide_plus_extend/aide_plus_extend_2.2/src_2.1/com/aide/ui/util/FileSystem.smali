.class public Lcom/aide/ui/util/FileSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Labcd/cy;
    clazz = 0x18179e4bf6765ca1L
    container = 0x18179e4bf6765ca1L
    user = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/util/FileSystem$a;
    }
.end annotation


# static fields
.field private static DW:Landroid/content/Context;
    .annotation runtime Labcd/dy;
        field = -0x772db93f9673cf3L
    .end annotation
.end field

.field private static synthetic FH:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field

.field private static synthetic Hw:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field

.field private static j6:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;
    .annotation runtime Labcd/dy;
        field = 0x4b427e73adc0c0b3L
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x11c856fda034e83cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x7c3ecb1a043480L

    :try_start_6
    const-class v3, Lcom/aide/ui/util/FileSystem;

    invoke-static {v3}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_12

    invoke-static {v1, v2, v0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_12
    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getClassFilePreProcessor()Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;

    move-result-object v3

    sput-object v3, Lcom/aide/ui/util/FileSystem;->j6:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x2a275333c03f3045L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2fedffb355972cdL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

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

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static BT(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x45371b38859e48b0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x23756eed8d282275L  # 7.19931681237541E-138

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, ""

    return-object p0

    .line 2
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-object p0

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v1, :cond_36

    const-wide v2, 0x23756eed8d282275L  # 7.19931681237541E-138

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method public static DW(JJ)Z
    .registers 23
    .annotation runtime Labcd/ey;
        method = -0x1db8061c8f135e80L
    .end annotation

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    :try_start_4
    sget-boolean v0, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v0, :cond_1b

    const-wide v5, -0x15697def3bbc3229L  # -2.822768648721436E205

    const/4 v0, 0x0

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v1, v2}, Ljava/lang/Long;-><init>(J)V

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v5, v6, v0, v7, v8}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    sub-long v5, v1, v3

    .line 1
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    const/4 v0, 0x1

    cmp-long v9, v5, v7

    if-gtz v9, :cond_29

    return v0

    :cond_29
    const-wide/32 v9, 0x36ee80

    .line 2
    rem-long v11, v5, v9

    const-wide/32 v13, 0x2ca1c80

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    cmp-long v18, v11, v15

    if-gtz v18, :cond_40

    cmp-long v1, v5, v13

    if-gtz v1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    return v0

    :cond_40
    sub-long v11, v5, v7

    .line 3
    rem-long/2addr v11, v9

    cmp-long v18, v11, v15

    if-nez v18, :cond_4e

    cmp-long v1, v5, v13

    if-gtz v1, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    return v0

    :cond_4e
    add-long/2addr v7, v5

    .line 4
    rem-long/2addr v7, v9
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_5c

    cmp-long v1, v7, v15

    if-nez v1, :cond_5b

    cmp-long v1, v5, v13

    if-gtz v1, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    return v0

    :cond_5b
    return v17

    :catchall_5c
    move-exception v0

    .line 5
    sget-boolean v5, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v5, :cond_79

    const-wide v5, -0x15697def3bbc3229L  # -2.822768648721436E205

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v1, v2}, Ljava/lang/Long;-><init>(J)V

    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v3, v4}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-wide v2, v5

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    throw v0
.end method

.method public static EQ(Ljava/io/File;)Ljava/lang/String;
    .registers 11
    .annotation runtime Labcd/ey;
        method = -0x14a23f3a9eaf1158L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x120650c827d592fL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/|\\\\"

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1e
    if-ge v7, v6, :cond_50

    aget-object v8, v5, v7

    .line 5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4d

    const-string v9, "."

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    goto :goto_4d

    :cond_31
    const-string v9, ".."

    .line 6
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_40

    return-object v4

    .line 8
    :cond_40
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4d

    .line 9
    :cond_4a
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    :goto_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 10
    :cond_50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_5d
    .catchall {:try_start_6 .. :try_end_5d} :catchall_7c

    const-string v7, "/"

    if-eqz v6, :cond_6e

    :try_start_61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 12
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 14
    :cond_6e
    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_7c

    return-object p0

    :catchall_7c
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_84

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_84
    goto :goto_86

    :goto_85
    throw v3

    :goto_86
    goto :goto_85
.end method

.method public static FH(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x2006e6d1f9e69610L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xa0b0e4a982316e5L  # -1.610124706652479E260

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_19

    return-void

    .line 2
    :cond_19
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " could not be created"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v3

    .line 3
    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_38

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v3
.end method

.method public static Hw(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x23dc8874fde990a3L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x14978e73a653a390L  # 1.791318902437699E-209

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_21

    .line 2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    return-void

    .line 3
    :cond_21
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " already exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v3

    .line 4
    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_40

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v3
.end method

.method public static I(Ljava/io/Reader;)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0xa57082c070fac41L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x59cb276606541a0L  # -3.503870941457206E281

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/16 v3, 0x1000

    new-array v3, v3, [C

    .line 1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    :goto_16
    invoke-virtual {p0, v3}, Ljava/io/Reader;->read([C)I

    move-result v5

    if-lez v5, :cond_21

    const/4 v6, 0x0

    .line 3
    invoke-virtual {v4, v3, v6, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 4
    :cond_21
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_26

    return-object p0

    :catchall_26
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_2e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    goto :goto_30

    :goto_2f
    throw v3

    :goto_30
    goto :goto_2f
.end method

.method public static J0(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation runtime Labcd/ey;
        method = -0x956cf8be8de6c0bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    const/4 v1, 0x0

    const-wide v2, -0x2115a4bf8b572350L

    :try_start_8
    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v4, :cond_f

    invoke-static {v2, v3, v1, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_f
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->sh(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    sget-object v5, Lcom/aide/ui/util/FileSystem;->j6:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;

    invoke-virtual {v5, v0, v4}, Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;->J8(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    return-object v0

    .line 6
    :cond_2b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_9d

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aide/ui/util/FileSystem;->EQ(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 8
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_59
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/aide/ui/util/FileSystem;->vy()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_68
    if-ge v7, v0, :cond_9c

    .line 11
    aget-object v8, v4, v7

    .line 12
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/aide/ui/util/FileSystem;->EQ(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {v8, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_99

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_99

    .line 14
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    if-gez v9, :cond_92

    .line 15
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 16
    :cond_92
    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_99
    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    :cond_9c
    return-object v6

    .line 17
    :cond_9d
    array-length v6, v4

    new-array v7, v6, [Ljava/lang/String;

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a7

    goto :goto_b8

    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b8
    if-ge v5, v6, :cond_d0

    .line 19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v4, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b8

    .line 20
    :cond_d0
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_d4
    .catchall {:try_start_8 .. :try_end_d4} :catchall_d5

    return-object p0

    :catchall_d5
    move-exception v0

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_dd

    invoke-static {v0, v2, v3, v1, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_dd
    goto :goto_df

    :goto_de
    throw v0

    :goto_df
    goto :goto_de
.end method

.method public static varargs J8(Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 11
    .annotation runtime Labcd/ey;
        method = 0xaff1928d4beec7cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v0, :cond_14

    const-wide v1, 0x21721d57eb0439L

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_14
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->isDirectory(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_4f

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 2
    :try_start_1b
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->J0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {v2, p1, p2}, Lcom/aide/ui/util/FileSystem;->J8(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v2
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_33} :catch_36
    .catchall {:try_start_1b .. :try_end_33} :catchall_4f

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_23

    :catch_36
    :cond_36
    return v1

    .line 5
    :cond_37
    :try_start_37
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->isFileAndNotZip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 6
    array-length v0, p2

    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v0, :cond_4e

    aget-object v3, p2, v2

    .line 7
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_4f

    if-eqz v3, :cond_4b

    const/4 p0, 0x1

    return p0

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_4e
    return v1

    :catchall_4f
    move-exception v0

    .line 8
    sget-boolean v1, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v1, :cond_65

    const-wide v2, 0x21721d57eb0439L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    goto :goto_67

    :goto_66
    throw v0

    :goto_67
    goto :goto_66
.end method

.method public static KD(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x759435bbcec0561L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x7d119f790c28cb88L  # -1.486346214412775E-294

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->isFileAndNotZip(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->cb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_19
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->isJarOrZipFile(Ljava/lang/String;)Z

    move-result p0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_23

    if-nez p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static Mr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation runtime Labcd/ey;
        method = -0x1f8b756216254ca0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x2c5ffe051fdfae85L  # -6.678186123549857E94

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-object p0

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v1, :cond_3e

    const-wide v2, -0x2c5ffe051fdfae85L  # -6.678186123549857E94

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public static Mz(Ljava/lang/String;)Ljava/io/Reader;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xfaa17d71de7923dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xa1d2c0190abaa38L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->isFileAndNotZip(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 3
    :cond_19
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->cb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 4
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->ca(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    .line 5
    :cond_24
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static OW(Ljava/lang/String;Ljava/io/Reader;)V
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x1cbe0e6a731c1190L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x38a30944e099c5L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 2
    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->I(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    .line 4
    sget-boolean v1, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v1, :cond_2f

    const-wide v2, -0x38a30944e099c5L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method public static P8(Landroid/content/Context;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x534930d1cc2754dcL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1be8da993514bba5L  # -1.4311835353942451E174

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    sput-object p0, Lcom/aide/ui/util/FileSystem;->DW:Landroid/content/Context;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v3

    .line 2
    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_18

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v3
.end method

.method private static QX(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x3ea8831be167b5c0L
    .end annotation

    const-wide v0, 0x4593f1d28950aebbL  # 1.543140134777953E27

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->isJarOrZipFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    return-object p0

    :cond_14
    move-object v3, p0

    .line 2
    :cond_15
    invoke-static {v3}, Lcom/aide/ui/util/FileSystem;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    return-object v2

    .line 3
    :cond_1c
    invoke-static {v3}, Lcom/aide/ui/util/FileSystem;->isJarOrZipFile(Ljava/lang/String;)Z

    move-result v4
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_23

    if-eqz v4, :cond_15

    return-object v3

    :catchall_23
    move-exception v3

    .line 4
    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v0, v1, v2, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v3

    :goto_2d
    goto :goto_2c
.end method

.method public static Qq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x14bf8d3313e691e4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x220383a9f2e57e19L  # -5.5578222083699775E144

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0, p1}, Lcom/aide/ui/util/FileSystem;->sy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception v0

    .line 2
    sget-boolean v1, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v1, :cond_23

    const-wide v2, -0x220383a9f2e57e19L  # -5.5578222083699775E144

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v0
.end method

.method public static SI(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x14aff021d9519ebcL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1cb12aa0664a089L  # -8.759203283833738E299

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->isDirectory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->cn(Ljava/lang/String;)Z

    move-result p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1e

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    return p0

    :catchall_1e
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v3
.end method

.method public static Sf(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x81f44e2cb3642b5L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xbb39e40dd3f040L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "/"

    .line 1
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return p0

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public static U2()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x36c8ed4ba233e900L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x1636da893228ea91L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    sget-object v3, Lcom/aide/ui/util/FileSystem;->DW:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method public static VH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x64f858218923588L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x4142b80e9a1df3L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/aide/ui/util/FileSystem;->Zo(Ljava/io/File;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    .line 2
    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static Ws(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x33788f0ecfb5c1f0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/util/FileSystem;->FH:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0x4743e60ed992ce63L  # -2.1141095431089116E-35

    invoke-static {v2, v3, v1, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_11
    if-eqz p0, :cond_23

    .line 2
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-object p0

    .line 3
    :cond_1e
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_24

    goto :goto_11

    :cond_23
    return-object v1

    :catchall_24
    move-exception v0

    move-object v5, p0

    .line 4
    sget-boolean p0, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz p0, :cond_35

    const-wide v2, -0x4743e60ed992ce63L  # -2.1141095431089116E-35

    const/4 v4, 0x0

    move-object v1, v0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    goto :goto_37

    :goto_36
    throw v0

    :goto_37
    goto :goto_36
.end method

.method public static XL(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x3bc5bd99ef844a60L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xac949fe50f85737L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    .line 2
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-gez v4, :cond_1c

    const-string p0, ""

    return-object p0

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-object p0

    :catchall_27
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method private static Zo(Ljava/io/File;)V
    .registers 8
    .annotation runtime Labcd/ey;
        method = -0x1565dddf4da21f19L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x381cfbcdde80b40L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    const/4 v4, 0x0

    .line 3
    :goto_1a
    array-length v5, v3

    if-ge v4, v5, :cond_2a

    .line 4
    new-instance v5, Ljava/io/File;

    aget-object v6, v3, v4

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/aide/ui/util/FileSystem;->Zo(Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 5
    :cond_2a
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_31

    return-void

    .line 6
    :cond_31
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " could not be deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v3

    .line 7
    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_54

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    goto :goto_56

    :goto_55
    throw v3

    :goto_56
    goto :goto_55
.end method

.method private static a8(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x2415f7659a6ceb35L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x3117748a41d0d000L  # 3.3187980871950107E-72

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1e

    const-string p0, ""

    return-object p0

    .line 3
    :cond_1e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2d

    return-object p0

    :catchall_2d
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_35

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v3
.end method

.method public static aM()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x321a974f9033468L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x420456fa9f681c53L  # -4.025094429577542E-10

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    sget-object v3, Lcom/aide/ui/util/FileSystem;->DW:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 2
    sget-object v3, Lcom/aide/ui/util/FileSystem;->DW:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    .line 3
    :cond_1b
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_20

    return-object v0

    :catchall_20
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_28

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v3
.end method

.method public static aj(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x3f8162fb3a5ea8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x318294283c3c36d1L  # 3.364861950935854E-70

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 4
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_40

    .line 5
    :try_start_29
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    .line 6
    invoke-virtual {v4, v7, v8}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 7
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_3a

    .line 8
    :try_start_36
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_3f

    :catchall_3a
    move-exception v3

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 9
    throw v3
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_40

    :cond_3f
    :goto_3f
    return-void

    :catchall_40
    move-exception v3

    .line 10
    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_48

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v3
.end method

.method private static ca(Ljava/lang/String;)Ljava/io/Reader;
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x57694f89d5bc3ca0L
    .end annotation

    const-wide v0, 0x2cd188d733100119L  # 8.406119601689159E-93

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    sget-object v5, Lcom/aide/ui/util/FileSystem;->j6:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;

    invoke-virtual {v5, v3, v4, v2}, Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;->QX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v3

    .line 4
    new-instance v4, Lcom/aide/ui/util/FileSystem$a;

    invoke-direct {v4, v3}, Lcom/aide/ui/util/FileSystem$a;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-object v4

    :catchall_21
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v0, v1, v2, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public static cb(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0xb0725495ebd6490L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x315c5d2d2b1b4fe3L  # -6.77614475547892E70

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 2
    sget-object v3, Lcom/aide/ui/util/FileSystem;->j6:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;

    invoke-virtual {v3, p0}, Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;->Mr(Ljava/lang/String;)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1f

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static cn(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x5ff66bb412ab2cd1L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x404cff864cfa6720L  # -0.07422600384379363

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 2
    sget-object v3, Lcom/aide/ui/util/FileSystem;->j6:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;

    invoke-virtual {v3, p0}, Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;->Mr(Ljava/lang/String;)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1f

    if-nez p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static ef(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x2569b4f97dafc210L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x4c01ffecb4472143L  # -2.9870766492897907E-58

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_3a

    :cond_d
    const/4 v0, 0x0

    .line 1
    :try_start_e
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2
    invoke-static {p1}, Lcom/aide/ui/util/FileSystem;->Mz(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_39
    .catchall {:try_start_e .. :try_end_16} :catchall_3a

    .line 3
    :try_start_16
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    :cond_1b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 5
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_34

    if-eqz v4, :cond_1b

    const/4 v1, 0x1

    .line 6
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    return v1

    :cond_30
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    return v0

    :catchall_34
    move-exception v1

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 7
    throw v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_39} :catch_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_3a

    :catch_39
    return v0

    :catchall_3a
    move-exception v0

    .line 8
    sget-boolean v1, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v1, :cond_4b

    const-wide v2, -0x4c01ffecb4472143L  # -2.9870766492897907E-58

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    goto :goto_4d

    :goto_4c
    throw v0

    :goto_4d
    goto :goto_4c
.end method

.method public static ei(Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x189bad458035a674L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xf0b7f1c5073bf91L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->cb(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_15

    return v4

    .line 2
    :cond_15
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_50

    const-wide/16 v7, 0x1f40

    cmp-long v3, v7, v5

    if-gez v3, :cond_27

    const/16 v3, 0x1f40

    goto :goto_28

    :cond_27
    long-to-int v3, v5

    .line 3
    :goto_28
    :try_start_28
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_4f
    .catchall {:try_start_28 .. :try_end_2d} :catchall_50

    .line 4
    :try_start_2d
    new-array v6, v3, [B

    .line 5
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7, v6}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v7, 0x0

    :goto_38
    if-ge v7, v3, :cond_46

    .line 6
    aget-byte v8, v6, v7
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_4a

    if-nez v8, :cond_43

    .line 7
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    const/4 p0, 0x1

    return p0

    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_46
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    return v4

    :catchall_4a
    move-exception v3

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 8
    throw v3
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4f} :catch_4f
    .catchall {:try_start_3e .. :try_end_4f} :catchall_50

    :catch_4f
    return v4

    :catchall_50
    move-exception v3

    .line 9
    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_58

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    goto :goto_5a

    :goto_59
    throw v3

    :goto_5a
    goto :goto_59
.end method

.method public static exists(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x69158ccb713f9a5L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x132982a1b80e5c0L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->cb(Ljava/lang/String;)Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_23

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static g3(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x6307f9747e08f1L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x3279ae6ee26c60L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result p0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return p0

    :catchall_17
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x821a9b7dcbac8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x6b14356c5ed4107L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/16 v3, 0x2f

    .line 1
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-object p0

    :catchall_1a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method public static getParent(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x2a4c6e73960b2239L
    .end annotation

    const-string v0, "/"

    const-wide v1, 0x4022ecb995f787cL

    const/4 v3, 0x0

    :try_start_8
    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v4, :cond_f

    invoke-static {v1, v2, v3, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_16

    return-object v3

    .line 2
    :cond_16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    return-object v3

    :cond_1d
    const/16 v4, 0x2f

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-nez v4, :cond_26

    return-object v0

    :cond_26
    const/4 v0, -0x1

    if-ne v4, v0, :cond_2a

    return-object v3

    :cond_2a
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_30

    return-object p0

    :catchall_30
    move-exception v0

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_38

    invoke-static {v0, v1, v2, v3, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public static isDirectory(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x44f5acc83808b56dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x56f1c9844ff446d4L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result p0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return p0

    :catchall_17
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method public static isFileAndNotZip(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x2928bbc39f0ef118L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x179ccb93ca35dddbL  # 6.163441487259989E-195

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->isJarOrZipFile(Ljava/lang/String;)Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_22

    if-nez p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0

    :catchall_22
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_2a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v3
.end method

.method private static isJarOrZipFile(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0xb3f11f79885ab8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x6fea129f9b5e891fL  # -3.530917320794935E-231

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string v3, ".jar"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string v3, ".zip"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_2c

    if-eqz p0, :cond_2a

    :cond_28
    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0

    :catchall_2c
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_34

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v3
.end method

.method public static j3()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x70d598f2f5890b3L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x3e68ebbeff23da8L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/aide/ui/util/FileSystem;->DW:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    return-object v0

    :catchall_25
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v3
.end method

.method public static synthetic j6()Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;
    .registers 1
    .annotation runtime Labcd/ey;
        method = -0x32401a15d8ec389fL
    .end annotation

    .line 1
    sget-object v0, Lcom/aide/ui/util/FileSystem;->j6:Lcom/aide/codemodel/language/classfile/ClassFilePreProcessor;

    return-object v0
.end method

.method public static lg(Ljava/lang/String;)J
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x13bfb6038a814770L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2a2a5c4c287f07b7L  # -3.1018798908636445E105

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-wide v0

    :catchall_17
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method public static lp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x318966d247487464L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x11bb9fd000ccaca7L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0, p1}, Lcom/aide/ui/util/FileSystem;->nw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_23

    return-object p0

    :cond_22
    return-object p1

    :catchall_23
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x11bb9fd000ccaca7L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public static nw(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x143eee06db6be14L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x31df538dbda5c765L  # -2.247599321727619E68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-eqz p1, :cond_2e

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_30

    if-eqz p0, :cond_2e

    :cond_2c
    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0

    :catchall_30
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v1, :cond_41

    const-wide v2, -0x31df538dbda5c765L  # -2.247599321727619E68

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v0
.end method

.method public static rN(Ljava/lang/String;)J
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x17423e4f36f9b30L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x22342c41218da6adL  # -6.786664563812491E143

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-wide v0

    :catchall_17
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method public static sh(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x1510e9aadf130920L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1df2aeb7f2e617f7L  # -2.1103508904326286E164

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->QX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_17

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0

    :catchall_17
    move-exception v3

    .line 2
    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method private static sy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x2bc8de78b875a68L
    .end annotation

    const-string v0, "/"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v1, :cond_f

    const-wide v1, 0x45a1e24164e3179bL  # 2.767385608527642E27

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    const-string v1, "\\\\"

    .line 1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    .line 2
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_34
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_4b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aide/ui/util/FileSystem;->EQ(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_5d
    .catchall {:try_start_2 .. :try_end_5d} :catchall_61

    if-eqz p0, :cond_60

    return-object v0

    :cond_60
    return-object p1

    :catchall_61
    move-exception v0

    .line 9
    sget-boolean v1, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v1, :cond_72

    const-wide v2, 0x45a1e24164e3179bL  # 2.767385608527642E27

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    throw v0
.end method

.method public static tp()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2104bd941bd49d0bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x3a62c1199dce7c00L  # -2.2627766603187675E27

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    sget-object v3, Lcom/aide/ui/util/FileSystem;->DW:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method public static u7(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .registers 11
    .annotation runtime Labcd/ey;
        method = 0x419220fa6e2235fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v0, :cond_14

    const-wide v1, -0x419863b4a7aa790L  # -6.844760712412849E288

    const/4 v3, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_14
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    :cond_19
    :goto_19
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 3
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_19

    :cond_46
    if-nez p2, :cond_53

    .line 7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_19

    .line 8
    :cond_53
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 9
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Lcom/aide/common/StreamUtilities;->VH(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catchall {:try_start_0 .. :try_end_6b} :catchall_6d

    goto :goto_19

    :cond_6c
    return-void

    :catchall_6d
    move-exception v0

    .line 12
    sget-boolean v1, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v1, :cond_83

    const-wide v2, -0x419863b4a7aa790L  # -6.844760712412849E288

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_83
    goto :goto_85

    :goto_84
    throw v0

    :goto_85
    goto :goto_84
.end method

.method public static v5(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0xae3b724347915bfL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x1c1becc59d11c838L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void

    .line 5
    :cond_24
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v0

    .line 6
    sget-boolean v1, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v1, :cond_4c

    const-wide v2, 0x1c1becc59d11c838L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v0
.end method

.method public static vJ(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x260d2d19da4e10ccL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x399dc7d8fce82541L  # -1.1547881988166842E31

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "/"

    .line 1
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/util/FileSystem;->isDirectory(Ljava/lang/String;)Z

    move-result p0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_23

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0

    :catchall_23
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_2b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static vy()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1944d987335801e1L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x316322f91205e7c8L  # -4.980194392383941E70

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    const-string v0, "/mnt/sdcard"
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-object v0

    :catchall_1f
    move-exception v3

    .line 4
    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static we(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x758cee6022fdd690L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x605d41e814a8974bL  # -2.730241065726453E-156

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/aide/ui/util/FileSystem;->J0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4
    invoke-static {v5}, Lcom/aide/ui/util/FileSystem;->SI(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_31

    goto :goto_1a

    :cond_30
    return-object v3

    :catchall_31
    move-exception v3

    .line 5
    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_39

    invoke-static {v3, v1, v2, v0, p0}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    goto :goto_3b

    :goto_3a
    throw v3

    :goto_3b
    goto :goto_3a
.end method

.method public static x9(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0xbdeda87315144b5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0xccd83f75200440L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    .line 4
    :cond_24
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be renamed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_3b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_52
    .catchall {:try_start_0 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    .line 6
    sget-boolean v1, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v1, :cond_63

    const-wide v2, 0xccd83f75200440L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method

.method public static yS()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x49f2692246a85bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x7c009e1d1ec2d898L  # 2.0243005048866518E289

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/util/FileSystem;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_d
    sget-object v3, Lcom/aide/ui/util/FileSystem;->DW:Landroid/content/Context;

    invoke-static {v3}, Landroidx/core/content/ContextCompat;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/util/FileSystem;->Hw:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method
