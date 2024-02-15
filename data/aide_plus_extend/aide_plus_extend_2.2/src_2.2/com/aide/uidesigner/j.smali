.class public Lcom/aide/uidesigner/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Labcd/cy;
    clazz = -0x207d784f0aa8ce4cL
    container = -0x207d784f0aa8ce4cL
    user = true
.end annotation


# static fields
.field private static synthetic VH:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field

.field private static synthetic Zo:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field


# instance fields
.field private DW:Landroid/content/Context;
    .annotation runtime Labcd/dy;
        field = -0x201aea858b7a8629L
    .end annotation
.end field

.field private FH:Ljava/util/Map;
    .annotation runtime Labcd/dy;
        field = 0x3c7db978e853e10L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/Map;
    .annotation runtime Labcd/dy;
        field = -0x35f98cb4a55da348L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private j6:Ljava/io/File;
    .annotation runtime Labcd/dy;
        field = 0xfe8c022685c828L
    .end annotation
.end field

.field private v5:Ljava/util/Map;
    .annotation runtime Labcd/dy;
        field = -0x171400404981db10L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/aide/uidesigner/j;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x2a75d8502d7ef4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/j;->Zo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x423d67ef3fccd778L  # 1.2629778426884167E11

    invoke-static {v2, v3, v1, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/aide/uidesigner/j;->DW:Landroid/content/Context;

    if-nez p2, :cond_15

    goto :goto_1a

    .line 3
    :cond_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1a
    iput-object v1, p0, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    .line 4
    sget-boolean v1, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0x423d67ef3fccd778L  # 1.2629778426884167E11

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method

.method private EQ(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x2f6de1755b91fe53L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2ede9a66b7cb9eb8L  # 6.301254933151501E-83

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_14
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_19
    if-ltz v0, :cond_3d

    .line 4
    iget-object v1, p0, Lcom/aide/uidesigner/j;->Hw:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3a

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3a

    .line 6
    invoke-direct {p0, v1, p2}, Lcom/aide/uidesigner/j;->EQ(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_3d
    const-string v0, "android:"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@android:style/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@style/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6e
    .catchall {:try_start_0 .. :try_end_6e} :catchall_6f

    return-object p1

    :catchall_6f
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v1, :cond_80

    const-wide v2, 0x2ede9a66b7cb9eb8L  # 6.301254933151501E-83

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_80
    goto :goto_82

    :goto_81
    throw v0

    :goto_82
    goto :goto_81
.end method

.method private Hw(Ljava/lang/String;Lcom/aide/uidesigner/h$b;Ljava/util/Set;)Ljava/lang/String;
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x28cd1630eadc2cc0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/uidesigner/h$b;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x4012dbfbcdae437L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    return-object v1

    .line 2
    :cond_18
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_1d
    if-ltz v0, :cond_58

    .line 4
    iget-object v2, p0, Lcom/aide/uidesigner/j;->FH:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_55

    .line 5
    iget-object v1, p2, Lcom/aide/uidesigner/h$b;->Hw:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3e

    return-object v1

    .line 6
    :cond_3e
    iget-object v1, p0, Lcom/aide/uidesigner/j;->Hw:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-direct {p0, v0, p2, p3}, Lcom/aide/uidesigner/j;->Hw(Ljava/lang/String;Lcom/aide/uidesigner/h$b;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1
    :try_end_54
    .catchall {:try_start_0 .. :try_end_54} :catchall_59

    return-object p1

    :cond_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_58
    return-object v1

    :catchall_59
    move-exception v0

    .line 8
    sget-boolean v1, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v1, :cond_6b

    const-wide v2, 0x4012dbfbcdae437L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    goto :goto_6d

    :goto_6c
    throw v0

    :goto_6d
    goto :goto_6c
.end method

.method private J0(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .annotation runtime Labcd/ey;
        method = -0x14dab7e23a225ae5L
    .end annotation

    const-wide v0, 0x2183f152a18e1004L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_6a

    :cond_c
    const/4 v2, 0x0

    if-eqz p1, :cond_69

    .line 1
    :try_start_f
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_69

    .line 2
    :cond_16
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 3
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5
    invoke-static {v5, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 7
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v5

    int-to-float v7, v3

    div-float/2addr v6, v7

    .line 8
    :goto_30
    div-int/lit8 v7, v5, 0x2

    const/16 v8, 0x1f4

    if-ge v7, v8, :cond_62

    div-int/lit8 v7, v3, 0x2

    if-ge v7, v8, :cond_62

    if-le v3, v8, :cond_40

    int-to-float v3, v8

    mul-float v3, v3, v6

    float-to-int v5, v3

    .line 9
    :cond_40
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 10
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 12
    invoke-static {v4, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 13
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    if-nez v3, :cond_56

    return-object v2

    .line 14
    :cond_56
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/aide/uidesigner/j;->DW:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v4

    .line 15
    :cond_62
    div-int/lit8 v5, v5, 0x2

    .line 16
    div-int/lit8 v3, v3, 0x2
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_66} :catch_69
    .catchall {:try_start_f .. :try_end_66} :catchall_6a

    mul-int/lit8 v4, v4, 0x2

    goto :goto_30

    :catch_69
    :cond_69
    :goto_69
    return-object v2

    :catchall_6a
    move-exception v2

    .line 17
    sget-boolean v3, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v3, :cond_72

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    goto :goto_74

    :goto_73
    throw v2

    :goto_74
    goto :goto_73
.end method

.method private J8(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x43cfba1f1de4f4acL
    .end annotation

    const-wide v0, 0x1dcd41e27174754fL  # 3.969241714980132E-165

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_21

    :cond_c
    const/4 v2, 0x0

    if-eqz p1, :cond_20

    .line 1
    :try_start_f
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_20

    .line 2
    :cond_16
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v2}, Landroid/graphics/drawable/NinePatchDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_20
    .catchall {:try_start_f .. :try_end_1f} :catchall_21

    return-object p1

    :catch_20
    :cond_20
    :goto_20
    return-object v2

    :catchall_21
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method private QX(Lorg/w3c/dom/Document;I)V
    .registers 13
    .annotation runtime Labcd/ey;
        method = -0x1b1242fe221035b7L
    .end annotation

    const-string v0, "name"

    :try_start_2
    sget-boolean v1, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v1, :cond_13

    const-wide v1, -0x1d310c6ebff9e62cL  # -9.125746330153902E167

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v2, p0, p1, v3}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    const-string v1, "style"

    .line 1
    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_1b
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_be

    .line 3
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 4
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 5
    instance-of v6, v5, Lorg/w3c/dom/Attr;

    if-eqz v6, :cond_ba

    .line 6
    check-cast v5, Lorg/w3c/dom/Attr;

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "."

    .line 7
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4c

    const/16 v6, 0x2e

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_60

    .line 9
    :cond_4c
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string v8, "parent"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 10
    instance-of v8, v7, Lorg/w3c/dom/Attr;

    if-eqz v8, :cond_60

    .line 11
    check-cast v7, Lorg/w3c/dom/Attr;

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 12
    :cond_60
    :goto_60
    iget-object v7, p0, Lcom/aide/uidesigner/j;->Hw:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 14
    iget-object v7, p0, Lcom/aide/uidesigner/j;->FH:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/SortedMap;

    invoke-interface {v7, v5, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    .line 16
    :goto_88
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_ba

    .line 17
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 18
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 19
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 20
    instance-of v9, v8, Lorg/w3c/dom/Attr;

    if-eqz v9, :cond_b7

    .line 21
    check-cast v8, Lorg/w3c/dom/Attr;

    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 22
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catchall {:try_start_2 .. :try_end_b7} :catchall_bf

    :cond_b7
    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    :cond_ba
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1b

    :cond_be
    return-void

    :catchall_bf
    move-exception v0

    .line 23
    sget-boolean v1, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v1, :cond_d4

    const-wide v2, -0x1d310c6ebff9e62cL  # -9.125746330153902E167

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d4
    goto :goto_d6

    :goto_d5
    throw v0

    :goto_d6
    goto :goto_d5
.end method

.method private VH(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x77ada0351cf95b0L
    .end annotation

    const-wide v0, -0x49868b7e28e19d3L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_32

    const-string v2, "@"

    .line 1
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_18
    if-ltz v2, :cond_32

    .line 3
    iget-object v3, p0, Lcom/aide/uidesigner/j;->v5:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_33

    if-eqz v3, :cond_2f

    return-object v3

    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_32
    return-object p1

    :catchall_33
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    goto :goto_3d

    :goto_3c
    throw v2

    :goto_3d
    goto :goto_3c
.end method

.method private Ws(ILjava/io/File;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x18f60fddaaa3ec00L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v0, :cond_11

    const-wide v0, -0x467d37e45e8c371bL  # -1.1575098803367314E-31

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_5f

    .line 1
    :cond_11
    :try_start_11
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_5e

    aget-object v2, p2, v1

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 8
    invoke-direct {p0, v2, p1}, Lcom/aide/uidesigner/j;->QX(Lorg/w3c/dom/Document;I)V

    const-string v3, "string"

    .line 9
    invoke-direct {p0, v2, p1, v3}, Lcom/aide/uidesigner/j;->XL(Lorg/w3c/dom/Document;ILjava/lang/String;)V

    const-string v3, "color"

    .line 10
    invoke-direct {p0, v2, p1, v3}, Lcom/aide/uidesigner/j;->XL(Lorg/w3c/dom/Document;ILjava/lang/String;)V

    const-string v3, "dimen"

    .line 11
    invoke-direct {p0, v2, p1, v3}, Lcom/aide/uidesigner/j;->XL(Lorg/w3c/dom/Document;ILjava/lang/String;)V

    const-string v3, "bool"

    .line 12
    invoke-direct {p0, v2, p1, v3}, Lcom/aide/uidesigner/j;->XL(Lorg/w3c/dom/Document;ILjava/lang/String;)V

    const-string v3, "integer"

    .line 13
    invoke-direct {p0, v2, p1, v3}, Lcom/aide/uidesigner/j;->XL(Lorg/w3c/dom/Document;ILjava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_11 .. :try_end_5b} :catchall_5e

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :catchall_5e
    :cond_5e
    return-void

    :catchall_5f
    move-exception v0

    .line 14
    sget-boolean v1, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v1, :cond_74

    const-wide v2, -0x467d37e45e8c371bL  # -1.1575098803367314E-31

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_74
    goto :goto_76

    :goto_75
    throw v0

    :goto_76
    goto :goto_75
.end method

.method private XL(Lorg/w3c/dom/Document;ILjava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = -0x1278ebcd6f7e7605L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v0, :cond_14

    const-wide v1, -0x2477231c00e607b8L  # -8.823869652157745E132

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_14
    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_19
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_66

    .line 3
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 5
    instance-of v4, v3, Lorg/w3c/dom/Attr;

    if-eqz v4, :cond_63

    .line 6
    check-cast v3, Lorg/w3c/dom/Attr;

    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v4, p0, Lcom/aide/uidesigner/j;->v5:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_0 .. :try_end_63} :catchall_67

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_66
    return-void

    :catchall_67
    move-exception v0

    .line 9
    sget-boolean v1, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v1, :cond_7d

    const-wide v2, -0x2477231c00e607b8L  # -8.823869652157745E132

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    goto :goto_7f

    :goto_7e
    throw v0

    :goto_7f
    goto :goto_7e
.end method

.method private v5(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x111811bb92845e30L
    .end annotation

    const-wide v0, -0x37c2d2ec9bcafL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    if-eqz p1, :cond_1d

    const-string v3, "?attr/"

    .line 1
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v2, 0x6

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2c

    :cond_1d
    if-eqz p1, :cond_2c

    const-string v3, "?"

    .line 3
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_2c
    :goto_2c
    if-eqz v2, :cond_62

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_30
    if-ltz v3, :cond_62

    .line 6
    iget-object v4, p0, Lcom/aide/uidesigner/j;->FH:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 7
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 8
    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 9
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_5e
    .catchall {:try_start_5 .. :try_end_5e} :catchall_63

    return-object v2

    :cond_5f
    add-int/lit8 v3, v3, -0x1

    goto :goto_30

    :cond_62
    return-object p1

    :catchall_63
    move-exception v2

    .line 10
    sget-boolean v3, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v3, :cond_6b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    goto :goto_6d

    :goto_6c
    throw v2

    :goto_6d
    goto :goto_6c
.end method

.method private we()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x12b0d88b07d6813dL
    .end annotation

    const-wide v0, 0x31015db944455638L  # 1.2286086145643828E-72

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/j;->DW:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x78

    if-eq v2, v3, :cond_34

    const/16 v3, 0xa0

    if-eq v2, v3, :cond_31

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x140

    if-eq v2, v3, :cond_2b

    const-string v0, ""

    return-object v0

    :cond_2b
    const-string v0, "xhdpi"

    return-object v0

    :cond_2e
    const-string v0, "hdpi"

    return-object v0

    :cond_31
    const-string v0, "mdpi"

    return-object v0

    :cond_34
    const-string v0, "ldpi"
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    return-object v0

    :catchall_37
    move-exception v2

    .line 2
    sget-boolean v3, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3f
    throw v2
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x2fcd246adfc2ff38L
    .end annotation

    const-wide v0, -0xbeb4db47c644dfL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/uidesigner/j;->v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/uidesigner/j;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public FH(Ljava/lang/String;Lcom/aide/uidesigner/h$b;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x2df25d15a468f858L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2076a25a27e04c4bL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "@style/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x7

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0, p2, v1}, Lcom/aide/uidesigner/j;->Hw(Ljava/lang/String;Lcom/aide/uidesigner/h$b;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_25

    return-object p1

    :cond_23
    const/4 p1, 0x0

    return-object p1

    :catchall_25
    move-exception v0

    .line 3
    sget-boolean v1, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v1, :cond_36

    const-wide v2, 0x2076a25a27e04c4bL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method public Zo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 21
    .annotation runtime Labcd/ey;
        method = -0x5efb60d6bb1fc019L
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "ldpi"

    const-string v3, "mdpi"

    const-string v4, "hdpi"

    const-string v5, "xhdpi"

    const-string v6, "xxhpdi"

    const-string v7, "drawable"

    const-string v8, ".9.png"

    const-string v9, ".jpg"

    const-string v10, ".png"

    const-string v11, "drawable-"

    const-wide v12, 0x23d0a6879ee04340L  # 3.579393360784931E-136

    :try_start_1d
    sget-boolean v14, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v14, :cond_24

    invoke-static {v12, v13, v1, v2}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_24
    iget-object v14, v1, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    if-eqz v14, :cond_228

    if-eqz v2, :cond_228

    const-string v14, "@drawable/"

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_228

    const/16 v14, 0xa

    .line 2
    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/io/File;

    iget-object v12, v1, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/j;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v14}, Lcom/aide/uidesigner/j;->J0(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6f

    return-object v0

    .line 4
    :cond_6f
    new-instance v0, Ljava/io/File;

    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/j;->we()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/aide/uidesigner/j;->J0(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a4

    return-object v0

    .line 5
    :cond_a4
    new-instance v0, Ljava/io/File;

    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/j;->we()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/aide/uidesigner/j;->J8(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_d9

    return-object v0

    .line 6
    :cond_d9
    new-instance v0, Ljava/io/File;

    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    invoke-direct {v12, v13, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/aide/uidesigner/j;->J0(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_fb

    return-object v0

    .line 7
    :cond_fb
    new-instance v0, Ljava/io/File;

    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    invoke-direct {v12, v13, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/aide/uidesigner/j;->J0(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_11d

    return-object v0

    .line 8
    :cond_11d
    new-instance v0, Ljava/io/File;

    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    invoke-direct {v12, v13, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v12, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/aide/uidesigner/j;->J8(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_13f

    return-object v0

    :cond_13f
    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v7, v12

    const/4 v13, 0x1

    aput-object v5, v7, v13

    const/4 v14, 0x2

    aput-object v4, v7, v14

    const/4 v15, 0x3

    aput-object v3, v7, v15

    const/16 v17, 0x4

    aput-object v16, v7, v17

    const/4 v15, 0x0

    :goto_153
    if-ge v15, v0, :cond_193

    .line 9
    aget-object v14, v7, v15

    .line 10
    new-instance v13, Ljava/io/File;

    new-instance v12, Ljava/io/File;

    iget-object v0, v1, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    move-object/from16 v18, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v13}, Lcom/aide/uidesigner/j;->J0(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_18a

    return-object v0

    :cond_18a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v18

    const/4 v0, 0x5

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    goto :goto_153

    :cond_193
    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v7, v0

    const/4 v0, 0x1

    aput-object v5, v7, v0

    const/4 v0, 0x2

    aput-object v4, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    aput-object v16, v7, v17

    const/4 v0, 0x0

    :goto_1a4
    const/4 v10, 0x5

    if-ge v0, v10, :cond_1dd

    .line 11
    aget-object v10, v7, v0

    .line 12
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v13, v14, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v13, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v12}, Lcom/aide/uidesigner/j;->J0(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_1da

    return-object v10

    :cond_1da
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a4

    :cond_1dd
    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v7, v0

    const/4 v6, 0x1

    aput-object v5, v7, v6

    const/4 v5, 0x2

    aput-object v4, v7, v5

    const/4 v4, 0x3

    aput-object v3, v7, v4

    aput-object v16, v7, v17

    const/4 v0, 0x5

    const/4 v12, 0x0

    :goto_1f0
    if-ge v12, v0, :cond_228

    .line 13
    aget-object v3, v7, v12

    .line 14
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/aide/uidesigner/j;->J8(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_222
    .catchall {:try_start_1d .. :try_end_222} :catchall_22a

    if-eqz v3, :cond_225

    return-object v3

    :cond_225
    add-int/lit8 v12, v12, 0x1

    goto :goto_1f0

    :cond_228
    const/4 v0, 0x0

    return-object v0

    :catchall_22a
    move-exception v0

    .line 15
    sget-boolean v3, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v3, :cond_237

    const-wide v3, 0x23d0a6879ee04340L  # 3.579393360784931E-136

    invoke-static {v0, v3, v4, v1, v2}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_237
    goto :goto_239

    :goto_238
    throw v0

    :goto_239
    goto :goto_238
.end method

.method public aM()V
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x1b8d56af591b7204L
    .end annotation

    const-wide v0, -0x1b684424d21574b7L  # -3.756859864161157E176

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/aide/uidesigner/j;->v5:Ljava/util/Map;

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/aide/uidesigner/j;->FH:Ljava/util/Map;

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/aide/uidesigner/j;->Hw:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_23
    const/16 v4, 0x64

    if-ge v3, v4, :cond_54

    .line 4
    iget-object v4, p0, Lcom/aide/uidesigner/j;->FH:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v4, p0, Lcom/aide/uidesigner/j;->Hw:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v4, p0, Lcom/aide/uidesigner/j;->v5:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 7
    :cond_54
    iget-object v3, p0, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    if-eqz v3, :cond_85

    .line 8
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    const-string v6, "values"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/uidesigner/j;->Ws(ILjava/io/File;)V

    const/4 v2, 0x1

    :goto_65
    if-ge v2, v4, :cond_85

    .line 9
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "values-v"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/uidesigner/j;->Ws(ILjava/io/File;)V
    :try_end_82
    .catchall {:try_start_5 .. :try_end_82} :catchall_86

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_85
    return-void

    :catchall_86
    move-exception v2

    .line 10
    sget-boolean v3, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v3, :cond_8e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8e
    goto :goto_90

    :goto_8f
    throw v2

    :goto_90
    goto :goto_8f
.end method

.method public gn()Ljava/util/List;
    .registers 14
    .annotation runtime Labcd/ey;
        method = 0x1b5774de4cd656c0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x4f57704bd0f4b469L  # -2.7150835105624836E-74

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v3, p0, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    if-eqz v3, :cond_8a

    .line 3
    iget-object v3, p0, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v4, :cond_8a

    aget-object v7, v3, v6

    .line 4
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_87

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 5
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_3a
    if-ge v9, v8, :cond_87

    aget-object v10, v7, v9

    .line 6
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 7
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_66

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_66

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_84

    .line 8
    :cond_66
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "@drawable/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {v10, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_84
    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    :cond_87
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 9
    :cond_8a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8f
    .catchall {:try_start_5 .. :try_end_8f} :catchall_90

    return-object v3

    :catchall_90
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v3, :cond_98

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_98
    goto :goto_9a

    :goto_99
    throw v2

    :goto_9a
    goto :goto_99
.end method

.method public j3()Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x26be0639f876b7fL
    .end annotation

    const-wide v0, -0x1837acf4ace7a18L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    :goto_d
    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_3d

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@drawable/image_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/aide/uidesigner/j;->Zo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3a

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_3d
    const-string v0, "image"
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_40

    return-object v0

    :catchall_40
    move-exception v2

    .line 3
    sget-boolean v3, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    goto :goto_4a

    :goto_49
    throw v2

    :goto_4a
    goto :goto_49
.end method

.method public j6(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x51a77d7e163174c9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xbb98d7a5bc89c00L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_4a

    .line 1
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aide/uidesigner/j;->j6:Ljava/io/File;

    const-string v2, "drawable"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3
    iget-object v1, p0, Lcom/aide/uidesigner/j;->DW:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, v2}, Lcom/aide/common/StreamUtilities;->Zo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_44} :catch_45
    .catchall {:try_start_c .. :try_end_44} :catchall_4a

    goto :goto_49

    :catch_45
    move-exception v0

    .line 5
    :try_start_46
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    :goto_49
    return-void

    :catchall_4a
    move-exception v0

    .line 6
    sget-boolean v1, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v1, :cond_5b

    const-wide v2, 0xbb98d7a5bc89c00L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    throw v0
.end method

.method public tp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x272d7444a64eed3dL
    .end annotation

    const-wide v0, -0x2e19ee7b50eeb334L  # -3.429732328224843E86

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-nez p1, :cond_10

    const/4 p1, 0x0

    return-object p1

    :cond_10
    const-string v2, "@style/"

    .line 1
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x7

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/aide/uidesigner/j;->EQ(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    :cond_26
    return-object p1

    :catchall_27
    move-exception v2

    .line 4
    sget-boolean v3, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public u7()Ljava/util/List;
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0x415ca67c1195de0bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x32350f863f87084L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/j;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v3, p0, Lcom/aide/uidesigner/j;->FH:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 3
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@style/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 5
    :cond_50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_56

    return-object v3

    :catchall_56
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/j;->VH:Z

    if-eqz v3, :cond_5e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5e
    goto :goto_60

    :goto_5f
    throw v2

    :goto_60
    goto :goto_5f
.end method
