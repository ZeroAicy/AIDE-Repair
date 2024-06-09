.class public final Labcd/u1;
.super Labcd/n1;
.source "SourceFile"


# annotations
.annotation runtime Labcd/cy;
    clazz = -0x1bc186d38067aaf0L
    container = -0x1bc186d38067aaf0L
    user = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/u1$a;,
        Labcd/u1$b;,
        Labcd/u1$c;
    }
.end annotation


# static fields
.field private static synthetic J8:Z
    .annotation runtime Labcd/fy;
    .end annotation
.end field

.field private static synthetic Ws:Z
    .annotation runtime Labcd/gy;
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/dy;
        field = 0x4a2fb7372162c040L
    .end annotation
.end field

.field private J0:Labcd/u1$b;
    .annotation runtime Labcd/dy;
        field = -0xd17db8b339d3829L
    .end annotation
.end field

.field private final VH:Lcom/aide/codemodel/api/EntitySpace;
    .annotation runtime Labcd/dy;
        field = -0x101e79e2c11ce587L
    .end annotation
.end field

.field private final Zo:Lcom/aide/codemodel/api/FileSpace;
    .annotation runtime Labcd/dy;
        field = -0x27eea346fd6dd4fbL
    .end annotation
.end field

.field private final gn:Lcom/aide/codemodel/api/IdentifierSpace;
    .annotation runtime Labcd/dy;
        field = 0x3f558859ec0e65cfL
    .end annotation
.end field

.field private tp:Lcom/aide/codemodel/api/FileEntry;
    .annotation runtime Labcd/dy;
        field = -0xd11c5e2b1a7f0ddL
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/dy;
        field = 0xd1c848144081668L
    .end annotation
.end field

.field private we:Labcd/k1;
    .annotation runtime Labcd/dy;
        field = -0x51fd567799597f7L
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Labcd/u1;

    invoke-static {v0}, Labcd/iy;->Zo(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/codemodel/api/EntitySpace;Lcom/aide/codemodel/api/IdentifierSpace;Lcom/aide/codemodel/api/FileSpace;)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = -0xb3ca33cc09b2f89L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x2039733e8651067L  # -7.431855045150195E298

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_10
    invoke-direct {p0, p3, p1}, Labcd/n1;-><init>(Lcom/aide/codemodel/api/FileSpace;Lcom/aide/codemodel/api/EntitySpace;)V

    .line 2
    iput-object p1, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    .line 3
    iput-object p2, p0, Labcd/u1;->gn:Lcom/aide/codemodel/api/IdentifierSpace;

    .line 4
    iput-object p3, p0, Labcd/u1;->Zo:Lcom/aide/codemodel/api/FileSpace;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    .line 5
    sget-boolean v1, Labcd/u1;->Ws:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x2039733e8651067L  # -7.431855045150195E298

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public constructor <init>(Lcom/aide/codemodel/api/EntitySpace;Lcom/aide/codemodel/api/IdentifierSpace;Lcom/aide/codemodel/api/FileSpace;Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;I)V
    .registers 25
    .annotation runtime Labcd/ey;
        method = -0xd6a770e4b672b50L
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    const-wide v8, 0x30575366263ec5c4L  # 8.057813821208459E-76

    :try_start_19
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_37

    new-array v0, v14, [Ljava/lang/Object;

    aput-object v2, v0, v13

    aput-object v3, v0, v12

    aput-object v4, v0, v11

    aput-object v5, v0, v10

    const/16 v17, 0x4

    aput-object v6, v0, v17

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v7}, Ljava/lang/Integer;-><init>(I)V

    const/16 v16, 0x5

    aput-object v10, v0, v16

    invoke-static {v8, v9, v15, v0}, Labcd/iy;->QX(JLjava/lang/Object;[Ljava/lang/Object;)V

    .line 6
    :cond_37
    invoke-direct {v1, v4, v2}, Labcd/n1;-><init>(Lcom/aide/codemodel/api/FileSpace;Lcom/aide/codemodel/api/EntitySpace;)V

    .line 7
    iput-object v2, v1, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    .line 8
    iput-object v3, v1, Labcd/u1;->gn:Lcom/aide/codemodel/api/IdentifierSpace;

    .line 9
    iput-object v4, v1, Labcd/u1;->Zo:Lcom/aide/codemodel/api/FileSpace;

    .line 10
    invoke-virtual {v2, v1}, Lcom/aide/codemodel/api/EntitySpace;->J8(Labcd/n1;)I

    move-result v0

    iput v0, v1, Labcd/u1;->u7:I

    .line 11
    iput-object v5, v1, Labcd/u1;->tp:Lcom/aide/codemodel/api/FileEntry;

    .line 12
    iput v7, v1, Labcd/u1;->EQ:I

    .line 13
    invoke-virtual {v1, v6}, Labcd/n1;->j6(Lcom/aide/codemodel/api/abstraction/Language;)V
    :try_end_4d
    .catchall {:try_start_19 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v0

    .line 14
    sget-boolean v10, Labcd/u1;->Ws:Z

    if-eqz v10, :cond_6c

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v2, v10, v13

    aput-object v3, v10, v12

    aput-object v4, v10, v11

    const/4 v2, 0x3

    aput-object v5, v10, v2

    const/4 v2, 0x4

    aput-object v6, v10, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v10, v3

    invoke-static {v0, v8, v9, v15, v10}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_6c
    throw v0
.end method

.method private AE()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xa916e5a6ef125bL
    .end annotation

    const-wide v0, -0x25a0b85910620bafL  # -2.1174024850317395E127

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-boolean v2, v2, Labcd/u1$b;->FH:Z

    if-nez v2, :cond_2b

    .line 3
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Labcd/u1$b;->FH:Z

    .line 4
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p0}, Labcd/u1;->VH()Lcom/aide/codemodel/api/FileEntry;

    move-result-object v3

    invoke-virtual {p0}, Labcd/n1;->XL()Lcom/aide/codemodel/api/abstraction/Language;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->e9(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    :cond_2b
    return-void

    :catchall_2c
    move-exception v2

    .line 5
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method private BR()V
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x2f9d95ad101de2cdL
    .end annotation

    const-wide v0, 0xdc587b86df2cf8fL

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-boolean v2, v2, Labcd/u1$b;->DW:Z

    if-nez v2, :cond_28

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Labcd/u1$b;->DW:Z

    .line 3
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p0}, Labcd/u1;->VH()Lcom/aide/codemodel/api/FileEntry;

    move-result-object v3

    invoke-virtual {p0}, Labcd/n1;->XL()Lcom/aide/codemodel/api/abstraction/Language;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->aX(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    :cond_28
    return-void

    :catchall_29
    move-exception v2

    .line 4
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method private QO(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;Lcom/aide/codemodel/api/Type;Lcom/aide/codemodel/api/Type;)Z
    .registers 14
    .annotation runtime Labcd/ey;
        method = -0x190da6cb36ebcd5fL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x1b30c226cb9af91dL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/iy;->J0(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    invoke-virtual {p3}, Labcd/n1;->rN()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p4}, Labcd/n1;->rN()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2
    invoke-virtual {p3, p1, p2, p4}, Lcom/aide/codemodel/api/Type;->XG(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;Lcom/aide/codemodel/api/Type;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    return v1

    .line 3
    :cond_25
    move-object v0, p4

    check-cast v0, Labcd/j1;

    invoke-virtual {v0}, Labcd/j1;->oY()Lcom/aide/codemodel/api/Type;

    move-result-object v0

    invoke-virtual {v0}, Labcd/n1;->BT()Z

    move-result p1
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_35

    if-eqz p1, :cond_33

    return v1

    :cond_33
    const/4 p1, 0x0

    return p1

    :catchall_35
    move-exception v0

    .line 4
    sget-boolean v1, Labcd/u1;->Ws:Z

    if-eqz v1, :cond_48

    const-wide v2, 0x1b30c226cb9af91dL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/iy;->a8(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0
.end method

.method private dx(Labcd/u1;Labcd/u1;)Z
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0xb6069983660716fL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x145c342138b7292dL  # -3.254112076719045E210

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p1}, Labcd/u1;->oY()I

    move-result v0

    invoke-virtual {p2}, Labcd/u1;->oY()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_18

    return v2

    .line 2
    :cond_18
    invoke-virtual {p1}, Labcd/u1;->Eq()I

    move-result v0

    invoke-virtual {p2}, Labcd/u1;->Eq()I

    move-result v1

    if-eq v0, v1, :cond_23

    return v2

    .line 3
    :cond_23
    invoke-virtual {p1}, Labcd/u1;->oY()I

    move-result v0
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_45

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_43

    .line 4
    :try_start_2a
    invoke-virtual {p1, v1}, Labcd/u1;->FN(I)I

    move-result v3

    invoke-virtual {p2, v1}, Labcd/u1;->FN(I)I

    move-result v4

    if-eq v3, v4, :cond_35

    return v2

    .line 5
    :cond_35
    invoke-virtual {p1, v1}, Labcd/u1;->qp(I)Lcom/aide/codemodel/api/Type;

    move-result-object v3

    invoke-virtual {p2, v1}, Labcd/u1;->qp(I)Lcom/aide/codemodel/api/Type;

    move-result-object v4
    :try_end_3d
    .catch Labcd/e4; {:try_start_2a .. :try_end_3d} :catch_40
    .catchall {:try_start_2a .. :try_end_3d} :catchall_45

    if-eq v3, v4, :cond_40

    return v2

    :catch_40
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_43
    const/4 p1, 0x1

    return p1

    :catchall_45
    move-exception v0

    .line 6
    sget-boolean v1, Labcd/u1;->Ws:Z

    if-eqz v1, :cond_56

    const-wide v2, -0x145c342138b7292dL  # -3.254112076719045E210

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    goto :goto_58

    :goto_57
    throw v0

    :goto_58
    goto :goto_57
.end method

.method private sG()Labcd/u1$b;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x224bdb5b0b168408L
    .end annotation

    const-wide v0, 0x223e295d13df8cd8L  # 9.661757190170667E-144

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    if-eqz v2, :cond_13

    iget-object v0, p0, Labcd/u1;->J0:Labcd/u1$b;

    return-object v0

    .line 2
    :cond_13
    new-instance v2, Labcd/u1$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Labcd/u1$b;-><init>(Labcd/u1$a;)V

    iput-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object v2

    :catchall_1c
    move-exception v2

    .line 3
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method


# virtual methods
.method public AL()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x13eb193700b7d7a8L
    .end annotation

    const-wide v0, -0x27ac6751271b4a68L  # -3.0885527270991504E117

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->j6:I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public CU(I)I
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0xc10c2386408f534L
    .end annotation

    const-wide v0, 0xa75d9185fa2008cL

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->a8:Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-virtual {v2, p1}, Lcom/aide/codemodel/api/collections/ListOfInt;->get(I)I

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, p0, Labcd/u1;->gn:Lcom/aide/codemodel/api/IdentifierSpace;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/codemodel/api/IdentifierSpace;->get(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3
    :cond_33
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->a8:Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-virtual {v2, p1}, Lcom/aide/codemodel/api/collections/ListOfInt;->get(I)I

    move-result p1
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3e

    return p1

    :catchall_3e
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_4b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v2
.end method

.method public Cz()Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1b2595336fb6f1c3L
    .end annotation

    const-wide v0, 0x17f4d29f8181ee27L  # 2.852468134911864E-193

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v2, v2, Labcd/u1$b;->ei:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    return v3

    .line 3
    :cond_1b
    invoke-virtual {p0}, Labcd/u1;->jO()Labcd/v3;

    move-result-object v2

    .line 4
    iget-object v4, v2, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v4}, Labcd/v3$b;->DW()V

    .line 5
    :cond_24
    iget-object v4, v2, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v4}, Labcd/v3$b;->j6()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 6
    iget-object v4, v2, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v4}, Labcd/v3$b;->FH()Labcd/n1;

    move-result-object v4

    check-cast v4, Labcd/u1;

    invoke-virtual {v4}, Labcd/u1;->Cz()Z

    move-result v4
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3d

    if-eqz v4, :cond_24

    return v3

    :cond_3b
    const/4 v0, 0x0

    return v0

    :catchall_3d
    move-exception v2

    .line 7
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_45

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_45
    goto :goto_47

    :goto_46
    throw v2

    :goto_47
    goto :goto_46
.end method

.method public DW()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x4c4361965bdb0e81L
    .end annotation

    const-wide v0, -0x204ab646af33be15L  # -1.1149421871436401E153

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget v0, p0, Labcd/u1;->EQ:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public EQ()Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x35cbb776a58cb928L
    .end annotation

    const-wide v0, -0x6cdf39fc7774430L  # -6.2487534080642E275

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_90

    :cond_c
    :try_start_c
    const-string v2, ""

    .line 1
    invoke-virtual {p0}, Labcd/u1;->e9()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    :goto_26
    invoke-virtual {p0}, Labcd/u1;->oY()I

    move-result v4

    if-ge v3, v4, :cond_59

    if-lez v3, :cond_3f

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    :cond_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Labcd/u1;->qp(I)Lcom/aide/codemodel/api/Type;

    move-result-object v2

    invoke-virtual {v2}, Labcd/n1;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 6
    :cond_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_6a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object v4

    invoke-virtual {v4}, Labcd/k1;->EQ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/n1;->lg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8d
    .catch Labcd/e4; {:try_start_c .. :try_end_8d} :catch_8e
    .catchall {:try_start_c .. :try_end_8d} :catchall_90

    return-object v0

    :catch_8e
    const/4 v0, 0x0

    return-object v0

    :catchall_90
    move-exception v2

    .line 8
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_98

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_98
    goto :goto_9a

    :goto_99
    throw v2

    :goto_9a
    goto :goto_99
.end method

.method public Eq()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1f234006ca4c380dL
    .end annotation

    const-wide v0, -0x1fc8af72eca65107L  # -3.125983845856731E155

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->yS:Labcd/h3;

    if-nez v2, :cond_19

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_19
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->yS:Labcd/h3;

    invoke-virtual {v2}, Labcd/h3;->EQ()I

    move-result v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return v0

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public Ev()I
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x2514bbe2d8dad5ecL
    .end annotation

    const-wide v0, 0x2b4d9ed99e90973cL  # 4.231983411413106E-100

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p0}, Labcd/u1;->VH()Lcom/aide/codemodel/api/FileEntry;

    move-result-object v3

    invoke-virtual {p0}, Labcd/n1;->XL()Lcom/aide/codemodel/api/abstraction/Language;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->Cz(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->we:I
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public FN(I)I
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x16cca7b6cec80713L
    .end annotation

    const-wide v0, 0xaed32f0f90a69e9L  # 4.86162570780495E-256

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->U2:Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-virtual {v2, p1}, Lcom/aide/codemodel/api/collections/ListOfInt;->get(I)I

    move-result p1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public Gj()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x299e3836aa907080L
    .end annotation

    const-wide v0, -0x1b6fcb9fc5db8210L  # -2.565048684096941E176

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->ei:I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1d

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public Hw()Labcd/k1;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x67d8679f65c82cb0L
    .end annotation

    const-wide v0, 0x518e1bbdd44fb090L  # 7.311323086864007E84

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Labcd/u1;->we:Labcd/k1;

    if-nez v2, :cond_13

    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    :cond_13
    iget-object v0, p0, Labcd/u1;->we:Labcd/k1;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public I(Labcd/k1;IIIZZIIZZZI)V
    .registers 40
    .annotation runtime Labcd/ey;
        method = 0x1703d1d0dd05c5a5L
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    const/16 v16, 0x9

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v25, 0x8

    const/16 v26, 0x1

    const/4 v14, 0x0

    :try_start_2d
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_90

    const/16 v15, 0xc

    new-array v0, v15, [Ljava/lang/Object;

    aput-object v2, v0, v14

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v0, v26

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v0, v22

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v0, v21

    new-instance v15, Ljava/lang/Boolean;

    invoke-direct {v15, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v15, v0, v20

    new-instance v15, Ljava/lang/Boolean;

    invoke-direct {v15, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v15, v0, v19

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v0, v18

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v0, v17

    new-instance v15, Ljava/lang/Boolean;

    invoke-direct {v15, v10}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v15, v0, v25

    new-instance v15, Ljava/lang/Boolean;

    invoke-direct {v15, v11}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v15, v0, v16

    new-instance v15, Ljava/lang/Boolean;

    invoke-direct {v15, v12}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v24, 0xa

    aput-object v15, v0, v24

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v13}, Ljava/lang/Integer;-><init>(I)V

    const/16 v23, 0xb

    aput-object v15, v0, v23

    const-wide v14, -0x2abe12e6be8ce5bfL  # -5.018754679550311E102

    invoke-static {v14, v15, v1, v0}, Labcd/iy;->QX(JLjava/lang/Object;[Ljava/lang/Object;)V

    .line 1
    :cond_90
    iput-object v2, v1, Labcd/u1;->we:Labcd/k1;

    .line 2
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    const/4 v14, 0x0

    iput-boolean v14, v0, Labcd/u1$b;->FH:Z

    .line 3
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput-boolean v6, v0, Labcd/u1$b;->XL:Z

    .line 4
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput-boolean v7, v0, Labcd/u1$b;->aM:Z

    .line 5
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v3, v0, Labcd/u1$b;->BT:I

    .line 6
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v9, v0, Labcd/u1$b;->P8:I

    .line 7
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v8, v0, Labcd/u1$b;->QX:I

    .line 8
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    const/4 v14, 0x0

    iput v14, v0, Labcd/u1$b;->ei:I

    .line 9
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget v14, v0, Labcd/u1$b;->ei:I

    or-int/lit8 v14, v14, 0x40

    iput v14, v0, Labcd/u1$b;->ei:I

    if-eqz v12, :cond_d4

    .line 10
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget v14, v0, Labcd/u1$b;->ei:I

    or-int/lit16 v14, v14, 0x80

    iput v14, v0, Labcd/u1$b;->ei:I

    :cond_d4
    if-eqz v10, :cond_e0

    .line 11
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget v14, v0, Labcd/u1$b;->ei:I

    or-int/lit8 v14, v14, 0x8

    iput v14, v0, Labcd/u1$b;->ei:I

    :cond_e0
    if-eqz v11, :cond_ec

    .line 12
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget v14, v0, Labcd/u1$b;->ei:I

    or-int/lit8 v14, v14, 0x10

    iput v14, v0, Labcd/u1$b;->ei:I

    .line 13
    :cond_ec
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->j3:Labcd/h3;

    if-nez v0, :cond_113

    if-lez v13, :cond_12c

    .line 14
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    new-instance v15, Labcd/h3;

    iget-object v14, v1, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v15, v14, v13}, Labcd/h3;-><init>(Lcom/aide/codemodel/api/EntitySpace;I)V

    iput-object v15, v0, Labcd/u1$b;->j3:Labcd/h3;

    const/4 v0, 0x0

    :goto_104
    if-ge v0, v13, :cond_12c

    .line 15
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v14

    iget-object v14, v14, Labcd/u1$b;->j3:Labcd/h3;

    const/4 v15, 0x0

    invoke-virtual {v14, v0, v15}, Labcd/h3;->u7(ILabcd/n1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_104

    .line 16
    :cond_113
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->j3:Labcd/h3;

    invoke-virtual {v0, v13}, Labcd/h3;->tp(I)V

    const/4 v0, 0x0

    :goto_11d
    if-ge v0, v13, :cond_12c

    .line 17
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v14

    iget-object v14, v14, Labcd/u1$b;->j3:Labcd/h3;

    const/4 v15, 0x0

    invoke-virtual {v14, v0, v15}, Labcd/h3;->u7(ILabcd/n1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11d

    .line 18
    :cond_12c
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->U2:Lcom/aide/codemodel/api/collections/ListOfInt;

    if-nez v0, :cond_151

    if-lez v5, :cond_16a

    .line 19
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    new-instance v14, Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-direct {v14, v5}, Lcom/aide/codemodel/api/collections/ListOfInt;-><init>(I)V

    iput-object v14, v0, Labcd/u1$b;->U2:Lcom/aide/codemodel/api/collections/ListOfInt;

    const/4 v0, 0x0

    :goto_142
    if-ge v0, v5, :cond_16a

    .line 20
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v14

    iget-object v14, v14, Labcd/u1$b;->U2:Lcom/aide/codemodel/api/collections/ListOfInt;

    const/4 v15, 0x0

    invoke-virtual {v14, v0, v15}, Lcom/aide/codemodel/api/collections/ListOfInt;->gn(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_142

    .line 21
    :cond_151
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->U2:Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-virtual {v0, v5}, Lcom/aide/codemodel/api/collections/ListOfInt;->u7(I)V

    const/4 v0, 0x0

    :goto_15b
    if-ge v0, v5, :cond_16a

    .line 22
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v14

    iget-object v14, v14, Labcd/u1$b;->U2:Lcom/aide/codemodel/api/collections/ListOfInt;

    const/4 v15, 0x0

    invoke-virtual {v14, v0, v15}, Lcom/aide/codemodel/api/collections/ListOfInt;->gn(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15b

    .line 23
    :cond_16a
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->a8:Lcom/aide/codemodel/api/collections/ListOfInt;

    if-nez v0, :cond_18f

    if-lez v5, :cond_1a8

    .line 24
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    new-instance v14, Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-direct {v14, v5}, Lcom/aide/codemodel/api/collections/ListOfInt;-><init>(I)V

    iput-object v14, v0, Labcd/u1$b;->a8:Lcom/aide/codemodel/api/collections/ListOfInt;

    const/4 v0, 0x0

    :goto_180
    if-ge v0, v5, :cond_1a8

    .line 25
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v14

    iget-object v14, v14, Labcd/u1$b;->a8:Lcom/aide/codemodel/api/collections/ListOfInt;

    const/4 v15, 0x0

    invoke-virtual {v14, v0, v15}, Lcom/aide/codemodel/api/collections/ListOfInt;->gn(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_180

    .line 26
    :cond_18f
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->a8:Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-virtual {v0, v5}, Lcom/aide/codemodel/api/collections/ListOfInt;->u7(I)V

    const/4 v14, 0x0

    :goto_199
    if-ge v14, v5, :cond_1a8

    .line 27
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->a8:Lcom/aide/codemodel/api/collections/ListOfInt;

    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15}, Lcom/aide/codemodel/api/collections/ListOfInt;->gn(II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_199

    .line 28
    :cond_1a8
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->Mr:Labcd/h3;

    if-nez v0, :cond_1cf

    if-lez v5, :cond_1e8

    .line 29
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    new-instance v14, Labcd/h3;

    iget-object v15, v1, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v14, v15, v5}, Labcd/h3;-><init>(Lcom/aide/codemodel/api/EntitySpace;I)V

    iput-object v14, v0, Labcd/u1$b;->Mr:Labcd/h3;

    const/4 v14, 0x0

    :goto_1c0
    if-ge v14, v5, :cond_1e8

    .line 30
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->Mr:Labcd/h3;

    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15}, Labcd/h3;->u7(ILabcd/n1;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1c0

    .line 31
    :cond_1cf
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->Mr:Labcd/h3;

    invoke-virtual {v0, v5}, Labcd/h3;->tp(I)V

    const/4 v14, 0x0

    :goto_1d9
    if-ge v14, v5, :cond_1e8

    .line 32
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->Mr:Labcd/h3;

    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15}, Labcd/h3;->u7(ILabcd/n1;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1d9

    .line 33
    :cond_1e8
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->rN:Labcd/m3;

    if-nez v0, :cond_1fe

    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    new-instance v14, Labcd/m3;

    iget-object v15, v1, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v14, v15}, Labcd/m3;-><init>(Lcom/aide/codemodel/api/EntitySpace;)V

    iput-object v14, v0, Labcd/u1$b;->rN:Labcd/m3;

    goto :goto_207

    .line 34
    :cond_1fe
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->rN:Labcd/m3;

    invoke-virtual {v0}, Labcd/m3;->Hw()V

    :goto_207
    if-nez v4, :cond_211

    .line 35
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    const/4 v14, 0x0

    iput-object v14, v0, Labcd/u1$b;->er:Labcd/v3;

    goto :goto_21e

    .line 36
    :cond_211
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    new-instance v14, Labcd/v3;

    iget-object v15, v1, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v14, v15}, Labcd/v3;-><init>(Lcom/aide/codemodel/api/EntitySpace;)V

    iput-object v14, v0, Labcd/u1$b;->er:Labcd/v3;

    :goto_21e
    if-nez v4, :cond_228

    .line 37
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    const/4 v14, 0x0

    iput-object v14, v0, Labcd/u1$b;->yS:Labcd/h3;

    goto :goto_235

    .line 38
    :cond_228
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    new-instance v14, Labcd/h3;

    iget-object v15, v1, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v14, v15, v4}, Labcd/h3;-><init>(Lcom/aide/codemodel/api/EntitySpace;I)V

    iput-object v14, v0, Labcd/u1$b;->yS:Labcd/h3;
    :try_end_235
    .catchall {:try_start_2d .. :try_end_235} :catchall_236

    :goto_235
    return-void

    :catchall_236
    move-exception v0

    .line 39
    sget-boolean v14, Labcd/u1;->Ws:Z

    if-eqz v14, :cond_29b

    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v14, v26

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v14, v22

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v14, v21

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v14, v20

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v14, v19

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v14, v18

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v14, v17

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v10}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v14, v25

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v11}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v14, v16

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v12}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v3, 0xa

    aput-object v2, v14, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v13}, Ljava/lang/Integer;-><init>(I)V

    const/16 v3, 0xb

    aput-object v2, v14, v3

    const-wide v2, -0x2abe12e6be8ce5bfL  # -5.018754679550311E102

    invoke-static {v0, v2, v3, v1, v14}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_29b
    goto :goto_29d

    :goto_29c
    throw v0

    :goto_29d
    goto :goto_29c
.end method

.method public IS()Z
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x45e8bd782927d335L
    .end annotation

    const-wide v0, -0x45374dc6013b7e61L  # -1.5959543533669231E-25

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v2, v2, Labcd/u1$b;->ei:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    return v3

    .line 3
    :cond_1b
    invoke-virtual {p0}, Labcd/u1;->jO()Labcd/v3;

    move-result-object v2

    .line 4
    iget-object v4, v2, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v4}, Labcd/v3$b;->DW()V

    .line 5
    :cond_24
    iget-object v4, v2, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v4}, Labcd/v3$b;->j6()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 6
    iget-object v4, v2, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v4}, Labcd/v3$b;->FH()Labcd/n1;

    move-result-object v4

    check-cast v4, Labcd/u1;

    invoke-virtual {v4}, Labcd/u1;->IS()Z

    move-result v4
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3d

    if-eqz v4, :cond_24

    return v3

    :cond_3b
    const/4 v0, 0x0

    return v0

    :catchall_3d
    move-exception v2

    .line 7
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_45

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_45
    goto :goto_47

    :goto_46
    throw v2

    :goto_47
    goto :goto_46
.end method

.method public J0()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2de78fad748b1ab1L
    .end annotation

    const-wide v0, -0x2e27774f08febbf5L  # -1.9064536796801468E86

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->P8:I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public J8()I
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x3df843eb35ff20L
    .end annotation

    const-wide v0, -0x76f3406f1048f510L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p0}, Labcd/u1;->VH()Lcom/aide/codemodel/api/FileEntry;

    move-result-object v3

    invoke-virtual {p0}, Labcd/n1;->XL()Lcom/aide/codemodel/api/abstraction/Language;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->Cz(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->VH:I
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public Jl()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2b900025dbeb9c3fL
    .end annotation

    const-wide v0, -0x1d401087c59f9f5bL  # -4.7079338423883124E167

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v2, v2, Labcd/u1$b;->BT:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_23

    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-boolean v0, v2, Labcd/u1$b;->vy:Z
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_25

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public Mr()I
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x46282c426fd4e125L
    .end annotation

    const-wide v0, 0x45a1cb2e06090b5fL  # 2.7534372242675157E27

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p0}, Labcd/u1;->VH()Lcom/aide/codemodel/api/FileEntry;

    move-result-object v3

    invoke-virtual {p0}, Labcd/n1;->XL()Lcom/aide/codemodel/api/abstraction/Language;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->Cz(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->u7:I
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public Mz(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x7b088981700b278L
    .end annotation

    const-wide v0, 0x66d2c88a1f6410d0L  # 2.043198432356302E187

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iput-object p1, v2, Labcd/u1$b;->KD:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Labcd/u1$b;->ro:Z

    .line 3
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iput-boolean v3, v2, Labcd/u1$b;->Hw:Z
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v2

    .line 4
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public Nh(Labcd/k1;Labcd/k1;)Z
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x1c2b86aed65334b0L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xfc1159569f037e0L  # 8.597077310600869E-233

    invoke-static {v0, v1, p0, p1, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->aM()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object v1

    .line 3
    invoke-static {v0}, Labcd/y1;->J8(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    return v3

    .line 4
    :cond_1c
    invoke-static {v0}, Labcd/y1;->FH(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 5
    invoke-virtual {p2, v1}, Labcd/k1;->hp(Labcd/k1;)Z

    move-result v2

    if-eqz v2, :cond_29

    return v3

    .line 6
    :cond_29
    invoke-virtual {p2, v1}, Labcd/k1;->GT(Labcd/k1;)Z

    move-result v2

    if-eqz v2, :cond_30

    return v3

    .line 7
    :cond_30
    invoke-static {v0}, Labcd/y1;->gn(I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 8
    invoke-virtual {v1}, Labcd/k1;->ys()Labcd/k1;

    move-result-object v2

    invoke-virtual {p2}, Labcd/k1;->ys()Labcd/k1;

    move-result-object v4

    if-ne v2, v4, :cond_41

    return v3

    .line 9
    :cond_41
    invoke-static {v0}, Labcd/y1;->VH(I)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 10
    invoke-virtual {p2}, Labcd/k1;->Cz()I

    move-result v2

    invoke-virtual {v1}, Labcd/k1;->Cz()I

    move-result v4

    if-ne v2, v4, :cond_52

    return v3

    .line 11
    :cond_52
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {v1}, Labcd/k1;->Cz()I

    move-result v4

    invoke-virtual {p2}, Labcd/k1;->Cz()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/aide/codemodel/api/EntitySpace;->v5(II)Z

    move-result v2

    if-eqz v2, :cond_63

    return v3

    .line 12
    :cond_63
    invoke-static {v0}, Labcd/y1;->we(I)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 13
    invoke-virtual {p2}, Labcd/k1;->Za()Labcd/z1;

    move-result-object v2

    invoke-virtual {v1}, Labcd/k1;->Za()Labcd/z1;

    move-result-object v4

    if-ne v2, v4, :cond_74

    return v3

    .line 14
    :cond_74
    invoke-static {v0}, Labcd/y1;->J0(I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_c4

    if-ne v1, p2, :cond_7e

    return v3

    .line 15
    :cond_7e
    invoke-virtual {v1}, Labcd/k1;->Za()Labcd/z1;

    move-result-object v2

    invoke-virtual {p2}, Labcd/k1;->Za()Labcd/z1;

    move-result-object v5

    if-ne v2, v5, :cond_9f

    .line 16
    invoke-virtual {v1}, Labcd/k1;->J0()I

    move-result v2

    invoke-virtual {p2}, Labcd/k1;->J0()I

    move-result v5

    if-ne v2, v5, :cond_9f

    .line 17
    invoke-virtual {v1}, Labcd/k1;->Yi()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 18
    invoke-virtual {p2}, Labcd/k1;->Yi()Z

    move-result v2

    if-eqz v2, :cond_9f

    return v3

    .line 19
    :cond_9f
    invoke-virtual {p2, v1}, Labcd/k1;->Ej(Lcom/aide/codemodel/api/Type;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 20
    invoke-static {v0}, Labcd/y1;->aM(I)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 21
    invoke-virtual {p1, p2}, Labcd/k1;->Ej(Lcom/aide/codemodel/api/Type;)Z

    move-result p1

    if-nez p1, :cond_b2

    return v4

    :cond_b2
    return v3

    .line 22
    :cond_b3
    invoke-virtual {p2}, Labcd/k1;->T6()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 23
    invoke-virtual {p2}, Labcd/k1;->Hw()Labcd/k1;

    move-result-object p2

    .line 24
    invoke-virtual {p2, v1}, Labcd/k1;->Ej(Lcom/aide/codemodel/api/Type;)Z

    move-result v0
    :try_end_c1
    .catchall {:try_start_0 .. :try_end_c1} :catchall_c5

    if-eqz v0, :cond_b3

    return v3

    :cond_c4
    return v4

    :catchall_c5
    move-exception v0

    move-object v6, p2

    .line 25
    sget-boolean p2, Labcd/u1;->Ws:Z

    if-eqz p2, :cond_d6

    const-wide v2, 0xfc1159569f037e0L  # 8.597077310600869E-233

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d6
    goto :goto_d8

    :goto_d7
    throw v0

    :goto_d8
    goto :goto_d7
.end method

.method public OW()Labcd/v3;
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x528db02d9c4ea24L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Labcd/v3<",
            "Labcd/u1;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x24eb27d2920c96cL

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    new-instance v2, Labcd/v3;

    iget-object v3, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v2, v3}, Labcd/v3;-><init>(Lcom/aide/codemodel/api/EntitySpace;)V

    .line 2
    new-instance v3, Labcd/v3;

    iget-object v4, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v3, v4}, Labcd/v3;-><init>(Lcom/aide/codemodel/api/EntitySpace;)V

    .line 3
    invoke-virtual {v3, p0}, Labcd/v3;->gn(Labcd/n1;)V

    .line 4
    :goto_1d
    iget-object v4, v3, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v4}, Labcd/v3$b;->DW()V

    .line 5
    :goto_22
    iget-object v4, v3, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v4}, Labcd/v3$b;->j6()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 6
    iget-object v4, v3, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v4}, Labcd/v3$b;->FH()Labcd/n1;

    move-result-object v4

    check-cast v4, Labcd/u1;

    .line 7
    invoke-virtual {v2, v4}, Labcd/v3;->gn(Labcd/n1;)V

    .line 8
    invoke-virtual {v4}, Labcd/u1;->jO()Labcd/v3;

    move-result-object v4

    invoke-virtual {v2, v4}, Labcd/v3;->u7(Labcd/v3;)V

    goto :goto_22

    .line 9
    :cond_3d
    invoke-virtual {v3}, Labcd/v3;->J0()I

    move-result v4

    invoke-virtual {v2}, Labcd/v3;->J0()I

    move-result v5

    if-ne v4, v5, :cond_48

    return-object v2

    .line 10
    :cond_48
    invoke-virtual {v3}, Labcd/v3;->FH()V

    .line 11
    invoke-virtual {v3, v2}, Labcd/v3;->u7(Labcd/v3;)V
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_4f

    goto :goto_1d

    :catchall_4f
    move-exception v2

    .line 12
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_57

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_57
    goto :goto_59

    :goto_58
    throw v2

    :goto_59
    goto :goto_58
.end method

.method public Q6()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x9a44cd2e61a9ba0L
    .end annotation

    const-wide v0, 0x31bc643ff5efa318L  # 4.1136836296289517E-69

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->aM()I

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_18

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public QX()I
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x78c0edb6a4c77c5L
    .end annotation

    const-wide v0, -0x66a4253027f56a9L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p0}, Labcd/u1;->VH()Lcom/aide/codemodel/api/FileEntry;

    move-result-object v3

    invoke-virtual {p0}, Labcd/n1;->XL()Lcom/aide/codemodel/api/abstraction/Language;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->Cz(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->Zo:I
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public Qq(Lcom/aide/codemodel/api/Type;)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1ac896c68d430a58L
    .end annotation

    const-wide v0, 0x69dd7acf016cb20L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iput-object p1, v2, Labcd/u1$b;->gW:Lcom/aide/codemodel/api/Type;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    .line 2
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public Sf(IILabcd/v1;)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x1f5ec8f97c2e0d8L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_18

    const-wide v1, -0x5e7e6a70878950e0L

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_18
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->rN:Labcd/m3;

    invoke-virtual {v0, p2, p3}, Labcd/m3;->we(ILabcd/n1;)V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->er:Labcd/v3;

    invoke-virtual {v0, p3}, Labcd/v3;->gn(Labcd/n1;)V

    .line 3
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->yS:Labcd/h3;

    invoke-virtual {v0, p1, p3}, Labcd/h3;->u7(ILabcd/n1;)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v0

    .line 4
    sget-boolean v1, Labcd/u1;->Ws:Z

    if-eqz v1, :cond_4e

    const-wide v2, -0x5e7e6a70878950e0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v0
.end method

.method public U2()I
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x2abbf85c441a664L
    .end annotation

    const-wide v0, -0x12d6f124bf32fccL

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p0}, Labcd/u1;->VH()Lcom/aide/codemodel/api/FileEntry;

    move-result-object v3

    invoke-virtual {p0}, Labcd/n1;->XL()Lcom/aide/codemodel/api/abstraction/Language;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->Cz(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->tp:I
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public VH()Lcom/aide/codemodel/api/FileEntry;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x10c42f18499958c0L
    .end annotation

    const-wide v0, 0x1bd5409633747e78L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v0, p0, Labcd/u1;->tp:Lcom/aide/codemodel/api/FileEntry;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public WB()Lcom/aide/codemodel/api/Type;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1126254ed113d5e8L
    .end annotation

    const-wide v0, 0x1c416faf16b45978L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->AE()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->gW:Lcom/aide/codemodel/api/Type;

    if-eqz v2, :cond_1e

    .line 3
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v0, v2, Labcd/u1$b;->gW:Lcom/aide/codemodel/api/Type;

    return-object v0

    .line 4
    :cond_1e
    new-instance v2, Labcd/e4;

    invoke-direct {v2}, Labcd/e4;-><init>()V

    throw v2
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v2

    .line 5
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public Ws()I
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x578ee44558b6e71bL
    .end annotation

    const-wide v0, -0x3bbcbae7736ca8d9L  # -7.109340427059796E20

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p0}, Labcd/u1;->VH()Lcom/aide/codemodel/api/FileEntry;

    move-result-object v3

    invoke-virtual {p0}, Labcd/n1;->XL()Lcom/aide/codemodel/api/abstraction/Language;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->Cz(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->v5:I
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public XG()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x58cd1dc1355cf950L
    .end annotation

    const-wide v0, -0x3b2bfbd0d4c6d3e8L  # -3.780980620275723E23

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->j3:Labcd/h3;

    if-nez v2, :cond_16

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_16
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->j3:Labcd/h3;

    invoke-virtual {v2}, Labcd/h3;->EQ()I

    move-result v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return v0

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public XX(I)Lcom/aide/codemodel/api/Type;
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x1679dd22fea4a400L
    .end annotation

    const-wide v0, 0x1484ae3e9288560L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->AE()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->j3:Labcd/h3;

    invoke-virtual {v2, p1}, Labcd/h3;->v5(I)Labcd/n1;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 3
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->j3:Labcd/h3;

    invoke-virtual {v2, p1}, Labcd/h3;->v5(I)Labcd/n1;

    move-result-object v2

    check-cast v2, Lcom/aide/codemodel/api/Type;

    return-object v2

    .line 4
    :cond_28
    new-instance v2, Labcd/e4;

    invoke-direct {v2}, Labcd/e4;-><init>()V

    throw v2
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v2

    .line 5
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_3b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method public Xa(I)Labcd/v1;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x1100c4ba811f0e59L
    .end annotation

    const-wide v0, 0x8fc64887da9e82bL

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->yS:Labcd/h3;

    invoke-virtual {v2, p1}, Labcd/h3;->v5(I)Labcd/n1;

    move-result-object v2

    check-cast v2, Labcd/v1;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object v2

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public Z1()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x3b8813119ed83bd8L
    .end annotation

    const-wide v0, 0x22c5071dad33bf8L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-boolean v0, v2, Labcd/u1$b;->XL:Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Za()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2a611cdd6ff65a25L
    .end annotation

    const-wide v0, 0x1021c0d1c9e52a37L  # 5.717550477783945E-231

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    .line 1
    iput-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    .line 2
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public Zo()I
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x2927baa8d1d171bL
    .end annotation

    const-wide v0, -0x37a35b0bd867b4c9L  # -3.8988669554433675E40

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p0}, Labcd/u1;->VH()Lcom/aide/codemodel/api/FileEntry;

    move-result-object v3

    invoke-virtual {p0}, Labcd/n1;->XL()Lcom/aide/codemodel/api/abstraction/Language;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->Cz(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->J8:I
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public a5()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x4c2ac877e63cb73cL
    .end annotation

    const-wide v0, 0x112b6b8891126e24L  # 5.787373994542184E-226

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->ei:I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1d

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public a8()I
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x740ba40c1108aa20L
    .end annotation

    const-wide v0, 0x45ad053e9aa60250L  # 4.4907027766999085E27

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p0}, Labcd/u1;->VH()Lcom/aide/codemodel/api/FileEntry;

    move-result-object v3

    invoke-virtual {p0}, Labcd/n1;->XL()Lcom/aide/codemodel/api/abstraction/Language;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->Cz(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->gn:I
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public aM()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x36dfb445f99e5a70L
    .end annotation

    const-wide v0, -0x45b334512bf6f50L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->BT:I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    invoke-virtual {p0}, Labcd/n1;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->isDefaultMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit16 v0, v0, -0x4001

    iput v0, v2, Labcd/u1$b;->BT:I

    :cond_1
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public aX()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x12d4811dbeb6404cL
    .end annotation

    const-wide v0, 0x3c4a6bec60557cacL  # 2.8646329629329963E-18

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    .line 1
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public aj(J)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x1ce1a24bf4f482f8L
    .end annotation

    const-wide v0, 0xf868c3c609d1530L  # 7.091489760959937E-234

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iput-wide p1, v2, Labcd/u1$b;->nw:J

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Labcd/u1$b;->SI:Z

    .line 3
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iput-boolean v3, v2, Labcd/u1$b;->Hw:Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    .line 4
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_32

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public aq()Labcd/v3;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x40f59971a1fc2dbL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Labcd/v3<",
            "Labcd/v1;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x2b90d79ffad9877L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->Eq()I

    move-result v2

    if-nez v2, :cond_1a

    new-instance v2, Labcd/v3;

    iget-object v3, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v2, v3}, Labcd/v3;-><init>(Lcom/aide/codemodel/api/EntitySpace;)V

    return-object v2

    .line 2
    :cond_1a
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v0, v2, Labcd/u1$b;->er:Labcd/v3;
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object v0

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public br()J
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x10dcde39fcd416f1L
    .end annotation

    const-wide v0, -0x27a4f98f4e1296bbL  # -4.259381628423434E117

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->w9()Z

    move-result v2

    if-nez v2, :cond_15

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_15
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-wide v0, v2, Labcd/u1$b;->nw:J
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-wide v0

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public cT()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x3ff9b678bb7b96fbL
    .end annotation

    const-wide v0, 0x67e153bb9a5195ffL  # 2.47043061556435E192

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object v2

    invoke-virtual {v2}, Labcd/k1;->e3()Labcd/m3;

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->lg:Labcd/v3;

    if-eqz v2, :cond_2a

    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->lg:Labcd/v3;

    invoke-virtual {v2}, Labcd/v3;->J0()I

    move-result v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_2c

    if-nez v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x1

    return v0

    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    return v0

    :catchall_2c
    move-exception v2

    .line 3
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method public ca(Labcd/k1;IIZZZZ)V
    .registers 26
    .annotation runtime Labcd/ey;
        method = -0x4c96d8a6a6876040L
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x7

    const/4 v15, 0x4

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/4 v13, 0x0

    :try_start_1a
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_54

    new-array v0, v12, [Ljava/lang/Object;

    aput-object v2, v0, v13

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v14, v0, v17

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v14, v0, v16

    new-instance v14, Ljava/lang/Boolean;

    invoke-direct {v14, v5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v14, v0, v11

    new-instance v14, Ljava/lang/Boolean;

    invoke-direct {v14, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v14, v0, v15

    new-instance v14, Ljava/lang/Boolean;

    invoke-direct {v14, v7}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v14, v0, v10

    new-instance v14, Ljava/lang/Boolean;

    invoke-direct {v14, v8}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v14, v0, v9

    const-wide v9, 0x5288c9a02e0b220L

    invoke-static {v9, v10, v1, v0}, Labcd/iy;->QX(JLjava/lang/Object;[Ljava/lang/Object;)V

    .line 1
    :cond_54
    iput-object v2, v1, Labcd/u1;->we:Labcd/k1;

    .line 2
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput-boolean v5, v0, Labcd/u1$b;->vy:Z

    .line 3
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v3, v0, Labcd/u1$b;->BT:I

    .line 4
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v4, v0, Labcd/u1$b;->P8:I

    .line 5
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v13, v0, Labcd/u1$b;->ei:I

    .line 6
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget v9, v0, Labcd/u1$b;->ei:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v0, Labcd/u1$b;->ei:I

    if-eqz v6, :cond_84

    .line 7
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget v9, v0, Labcd/u1$b;->ei:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v0, Labcd/u1$b;->ei:I

    :cond_84
    if-eqz v7, :cond_8f

    .line 8
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget v9, v0, Labcd/u1$b;->ei:I

    or-int/2addr v9, v15

    iput v9, v0, Labcd/u1$b;->ei:I

    :cond_8f
    if-eqz v8, :cond_9b

    .line 9
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget v9, v0, Labcd/u1$b;->ei:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v0, Labcd/u1$b;->ei:I
    :try_end_9b
    .catchall {:try_start_1a .. :try_end_9b} :catchall_9c

    :cond_9b
    return-void

    :catchall_9c
    move-exception v0

    .line 10
    sget-boolean v9, Labcd/u1;->Ws:Z

    if-eqz v9, :cond_d9

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v2, v9, v13

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v9, v17

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v9, v16

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v9, v11

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v9, v15

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v7}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x5

    aput-object v2, v9, v3

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v8}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v3, 0x6

    aput-object v2, v9, v3

    const-wide v2, 0x5288c9a02e0b220L

    invoke-static {v0, v2, v3, v1, v9}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_d9
    throw v0
.end method

.method public e3()Z
    .registers 8
    .annotation runtime Labcd/ey;
        method = 0x54572dd324c4cff0L
    .end annotation

    const-wide v0, -0x3f3a3d5a3cd0ca98L  # -11141.29501905544

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->iW()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3b

    .line 2
    invoke-virtual {p0}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Labcd/k1;->aX()Labcd/v3;

    move-result-object v2

    .line 4
    iget-object v5, v2, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v5}, Labcd/v3$b;->DW()V

    .line 5
    :cond_21
    iget-object v5, v2, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v5}, Labcd/v3$b;->j6()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 6
    iget-object v5, v2, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v5}, Labcd/v3$b;->FH()Labcd/n1;

    move-result-object v5

    check-cast v5, Labcd/u1;

    if-eq v5, p0, :cond_21

    .line 7
    invoke-direct {p0, p0, v5}, Labcd/u1;->dx(Labcd/u1;Labcd/u1;)Z

    move-result v5

    if-eqz v5, :cond_21

    return v3

    :cond_3a
    return v4

    .line 8
    :cond_3b
    invoke-virtual {p0}, Labcd/u1;->sg()Z

    move-result v2

    if-eqz v2, :cond_42

    return v4

    .line 9
    :cond_42
    invoke-virtual {p0}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Labcd/k1;->sM()Labcd/m3;

    move-result-object v2

    .line 11
    iget-object v5, v2, Labcd/m3;->j6:Labcd/m3$b;

    invoke-virtual {p0}, Labcd/u1;->J0()I

    move-result v6

    invoke-virtual {v5, v6}, Labcd/m3$b;->FH(I)V

    .line 12
    :cond_53
    iget-object v5, v2, Labcd/m3;->j6:Labcd/m3$b;

    invoke-virtual {v5}, Labcd/m3$b;->j6()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 13
    iget-object v5, v2, Labcd/m3;->j6:Labcd/m3$b;

    invoke-virtual {v5}, Labcd/m3$b;->v5()Labcd/n1;

    move-result-object v5

    check-cast v5, Labcd/u1;

    if-eq v5, p0, :cond_53

    .line 14
    invoke-virtual {v5}, Labcd/u1;->sg()Z

    move-result v6

    if-nez v6, :cond_53

    invoke-direct {p0, p0, v5}, Labcd/u1;->dx(Labcd/u1;Labcd/u1;)Z

    move-result v5
    :try_end_6f
    .catchall {:try_start_5 .. :try_end_6f} :catchall_73

    if-eqz v5, :cond_53

    return v3

    :cond_72
    return v4

    :catchall_73
    move-exception v2

    .line 15
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_7b

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7b
    goto :goto_7d

    :goto_7c
    throw v2

    :goto_7d
    goto :goto_7c
.end method

.method public e9()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1e00637093c0e147L
    .end annotation

    const-wide v0, 0x1b6141ecfe53598bL  # 8.51747763296976E-177

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->ei:I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1d

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public eU()Z
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x46fd35ddc6af4b07L
    .end annotation

    const-wide v0, 0xcc7157a2764df63L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->sg()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    return v3

    .line 2
    :cond_14
    invoke-virtual {p0}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object v2

    invoke-virtual {v2}, Labcd/k1;->QO()Labcd/m3;

    move-result-object v2

    .line 3
    iget-object v4, v2, Labcd/m3;->j6:Labcd/m3$b;

    invoke-virtual {p0}, Labcd/u1;->J0()I

    move-result v5

    invoke-virtual {v4, v5}, Labcd/m3$b;->FH(I)V

    .line 4
    :cond_25
    iget-object v4, v2, Labcd/m3;->j6:Labcd/m3$b;

    invoke-virtual {v4}, Labcd/m3$b;->j6()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 5
    iget-object v4, v2, Labcd/m3;->j6:Labcd/m3$b;

    invoke-virtual {v4}, Labcd/m3$b;->v5()Labcd/n1;

    move-result-object v4

    check-cast v4, Labcd/u1;

    if-eq v4, p0, :cond_25

    .line 6
    invoke-virtual {v4}, Labcd/u1;->sg()Z

    move-result v4
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_40

    if-nez v4, :cond_25

    const/4 v0, 0x1

    return v0

    :cond_3f
    return v3

    :catchall_40
    move-exception v2

    .line 7
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    goto :goto_4a

    :goto_49
    throw v2

    :goto_4a
    goto :goto_49
.end method

.method public ef(Lcom/aide/codemodel/api/Type;I)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x1b6fb4bb9234714L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_11

    const-wide v0, 0x5fd27c6f0f56a5f4L  # 3.872776111099742E153

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, p1, v2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->j3:Labcd/h3;

    invoke-virtual {v0, p2, p1}, Labcd/h3;->u7(ILabcd/n1;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    .line 2
    sget-boolean v1, Labcd/u1;->Ws:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x5fd27c6f0f56a5f4L  # 3.872776111099742E153

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public et(I)Lcom/aide/codemodel/api/Type;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xb63236340ef39e9L
    .end annotation

    const-wide v0, -0xee32c54e40f92fdL  # -7.332523967054398E236

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->AE()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->sh:Labcd/h3;

    invoke-virtual {v2, p1}, Labcd/h3;->v5(I)Labcd/n1;

    move-result-object v2

    check-cast v2, Lcom/aide/codemodel/api/Type;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object v2

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_29

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public fN()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x2b3e8539a4b05facL
    .end annotation

    const-wide v0, 0x55b706759989b094L  # 8.25130274438307E104

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-boolean v0, v2, Labcd/u1$b;->aM:Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public fY(Lcom/aide/codemodel/api/Type;Z)Lcom/aide/codemodel/api/Type;
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x55677f6f7ac2a3fL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_11

    const-wide v0, -0x40473bdf6ebcd1bL

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, p0, p1, v2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    invoke-virtual {p0}, Labcd/u1;->WB()Lcom/aide/codemodel/api/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Labcd/n1;->er()Z

    move-result v1

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Labcd/k1;

    invoke-virtual {v1, p0}, Labcd/k1;->oy(Labcd/u1;)Lcom/aide/codemodel/api/Type;

    move-result-object v1

    goto :goto_2e

    .line 3
    :cond_23
    move-object v1, p1

    check-cast v1, Labcd/a2;

    invoke-virtual {v1}, Labcd/a2;->ko()Labcd/k1;

    move-result-object v1

    invoke-virtual {v1, p0}, Labcd/k1;->oy(Labcd/u1;)Lcom/aide/codemodel/api/Type;

    move-result-object v1

    :goto_2e
    const/4 v2, 0x1

    if-eqz p2, :cond_77

    .line 4
    invoke-virtual {v0}, Labcd/n1;->nw()Z

    move-result v3

    if-eqz v3, :cond_d1

    invoke-virtual {v1}, Labcd/n1;->ei()Z

    move-result v3

    if-eqz v3, :cond_d1

    invoke-virtual {p1}, Labcd/n1;->ei()Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 5
    move-object v3, v1

    check-cast v3, Labcd/a2;

    invoke-virtual {v3, v0, v2}, Labcd/a2;->mb(Lcom/aide/codemodel/api/Type;Z)Lcom/aide/codemodel/api/Type;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Labcd/n1;->nw()Z

    move-result v3

    if-eqz v3, :cond_d1

    move-object v3, v2

    check-cast v3, Labcd/b2;

    .line 7
    invoke-virtual {v3}, Labcd/b2;->WB()Labcd/k1;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Labcd/a2;

    invoke-virtual {v4}, Labcd/a2;->ko()Labcd/k1;

    move-result-object v4

    if-ne v3, v4, :cond_d1

    move-object v3, p1

    check-cast v3, Labcd/a2;

    .line 8
    invoke-virtual {v3}, Labcd/a2;->jO()[I

    move-result-object v3

    check-cast v2, Labcd/b2;

    invoke-virtual {v2}, Labcd/b2;->ko()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d1

    .line 9
    invoke-virtual {v0}, Lcom/aide/codemodel/api/Type;->x9()Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 10
    :cond_77
    invoke-virtual {v0}, Labcd/n1;->nw()Z

    move-result v3

    if-eqz v3, :cond_d1

    invoke-virtual {v1}, Labcd/n1;->ei()Z

    move-result v3

    if-eqz v3, :cond_d1

    invoke-virtual {p1}, Labcd/n1;->ei()Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 11
    move-object v3, v1

    check-cast v3, Labcd/a2;

    invoke-virtual {v3, v0, v2}, Labcd/a2;->mb(Lcom/aide/codemodel/api/Type;Z)Lcom/aide/codemodel/api/Type;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Labcd/n1;->nw()Z

    move-result v4

    if-eqz v4, :cond_d1

    move-object v4, v3

    check-cast v4, Labcd/b2;

    .line 13
    invoke-virtual {v4}, Labcd/b2;->WB()Labcd/k1;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Labcd/a2;

    invoke-virtual {v5}, Labcd/a2;->ko()Labcd/k1;

    move-result-object v5

    if-ne v4, v5, :cond_b9

    move-object v4, p1

    check-cast v4, Labcd/a2;

    .line 14
    invoke-virtual {v4}, Labcd/a2;->jO()[I

    move-result-object v4

    move-object v5, v3

    check-cast v5, Labcd/b2;

    invoke-virtual {v5}, Labcd/b2;->ko()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_cb

    :cond_b9
    move-object v4, p1

    check-cast v4, Labcd/a2;

    .line 15
    invoke-virtual {v4}, Labcd/a2;->jO()[I

    move-result-object v4

    check-cast v3, Labcd/b2;

    invoke-virtual {v3}, Labcd/b2;->ko()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v2, :cond_cb

    goto :goto_d1

    .line 16
    :cond_cb
    new-instance v0, Labcd/e4;

    invoke-direct {v0}, Labcd/e4;-><init>()V

    throw v0

    .line 17
    :cond_d1
    :goto_d1
    invoke-virtual {p1}, Labcd/n1;->er()Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 18
    invoke-virtual {p1}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-nez v2, :cond_e3

    invoke-virtual {v1}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-eqz v2, :cond_ee

    :cond_e3
    invoke-virtual {p0}, Labcd/u1;->gG()Z

    move-result v2

    if-nez v2, :cond_ee

    invoke-virtual {v0}, Lcom/aide/codemodel/api/Type;->x9()Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 19
    :cond_ee
    invoke-virtual {v1}, Labcd/n1;->ei()Z

    move-result v2

    if-eqz v2, :cond_fb

    check-cast v1, Labcd/a2;

    invoke-virtual {v1, v0, p2}, Labcd/a2;->mb(Lcom/aide/codemodel/api/Type;Z)Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    :cond_fb
    return-object v0

    .line 20
    :cond_fc
    invoke-virtual {p1}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-nez v2, :cond_108

    invoke-virtual {v1}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-eqz v2, :cond_11a

    :cond_108
    invoke-virtual {p0}, Labcd/u1;->gG()Z

    move-result v2

    if-nez v2, :cond_11a

    move-object v1, p1

    check-cast v1, Labcd/a2;

    invoke-virtual {v0}, Lcom/aide/codemodel/api/Type;->x9()Lcom/aide/codemodel/api/Type;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Labcd/a2;->mb(Lcom/aide/codemodel/api/Type;Z)Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 21
    :cond_11a
    invoke-virtual {v1}, Labcd/n1;->ei()Z

    move-result v2

    if-nez v2, :cond_128

    move-object v1, p1

    check-cast v1, Labcd/a2;

    invoke-virtual {v1, v0, p2}, Labcd/a2;->mb(Lcom/aide/codemodel/api/Type;Z)Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 22
    :cond_128
    move-object v2, p1

    check-cast v2, Labcd/a2;

    check-cast v1, Labcd/a2;

    invoke-virtual {v1, v0, p2}, Labcd/a2;->mb(Lcom/aide/codemodel/api/Type;Z)Lcom/aide/codemodel/api/Type;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Labcd/a2;->mb(Lcom/aide/codemodel/api/Type;Z)Lcom/aide/codemodel/api/Type;

    move-result-object p1
    :try_end_135
    .catchall {:try_start_0 .. :try_end_135} :catchall_136

    return-object p1

    :catchall_136
    move-exception v0

    sget-boolean v1, Labcd/u1;->Ws:Z

    if-eqz v1, :cond_14b

    const-wide v2, -0x40473bdf6ebcd1bL

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14b
    throw v0
.end method

.method public g3(IIIIIIIIIII)V
    .registers 39
    .annotation runtime Labcd/ey;
        method = -0x573d5deec6cd493L
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v13, 0xb

    const-wide v14, 0x13dc8f5919a7e481L  # 5.30225452872551E-213

    :try_start_2f
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_8b

    new-array v0, v13, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v0, v23

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v0, v22

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v0, v21

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v0, v20

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v0, v19

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v0, v18

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v0, v17

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v0, v16

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v10}, Ljava/lang/Integer;-><init>(I)V

    const/16 v26, 0x8

    aput-object v13, v0, v26

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v11}, Ljava/lang/Integer;-><init>(I)V

    const/16 v25, 0x9

    aput-object v13, v0, v25

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v12}, Ljava/lang/Integer;-><init>(I)V

    const/16 v24, 0xa

    aput-object v13, v0, v24

    invoke-static {v14, v15, v1, v0}, Labcd/iy;->QX(JLjava/lang/Object;[Ljava/lang/Object;)V

    .line 1
    :cond_8b
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v2, v0, Labcd/u1$b;->v5:I

    .line 2
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v3, v0, Labcd/u1$b;->Zo:I

    .line 3
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v4, v0, Labcd/u1$b;->VH:I

    .line 4
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v5, v0, Labcd/u1$b;->gn:I

    .line 5
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v6, v0, Labcd/u1$b;->tp:I

    .line 6
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v7, v0, Labcd/u1$b;->u7:I

    .line 7
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v8, v0, Labcd/u1$b;->EQ:I

    .line 8
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v9, v0, Labcd/u1$b;->we:I

    .line 9
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v10, v0, Labcd/u1$b;->J0:I

    .line 10
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v11, v0, Labcd/u1$b;->J8:I

    .line 11
    invoke-direct/range {p0 .. p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iput v12, v0, Labcd/u1$b;->Ws:I
    :try_end_cd
    .catchall {:try_start_2f .. :try_end_cd} :catchall_ce

    return-void

    :catchall_ce
    move-exception v0

    .line 12
    sget-boolean v13, Labcd/u1;->Ws:Z

    if-eqz v13, :cond_132

    const/16 v13, 0xb

    new-array v13, v13, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v14, v13, v23

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v13, v22

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v13, v21

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v13, v20

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v13, v19

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v13, v18

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v13, v17

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v13, v16

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    const/16 v3, 0x8

    aput-object v2, v13, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    const/16 v3, 0x9

    aput-object v2, v13, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v12}, Ljava/lang/Integer;-><init>(I)V

    const/16 v3, 0xa

    aput-object v2, v13, v3

    const-wide v2, 0x13dc8f5919a7e481L  # 5.30225452872551E-213

    invoke-static {v0, v2, v3, v1, v13}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_132
    throw v0
.end method

.method public gG()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x28b1073647d27aa8L
    .end annotation

    const-wide v0, -0x27bd8a2be98ead80L  # -1.454743144980307E117

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->BT:I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1d

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public hK()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x4be0825e6d43fd18L
    .end annotation

    const-wide v0, 0x40d42d72c5aff198L  # 20661.793315874034

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object v2

    invoke-virtual {v2}, Labcd/k1;->e3()Labcd/m3;

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->lg:Labcd/v3;

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    return v3

    .line 3
    :cond_1d
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->lg:Labcd/v3;

    iget-object v2, v2, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v2}, Labcd/v3$b;->DW()V

    .line 4
    :cond_28
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->lg:Labcd/v3;

    iget-object v2, v2, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v2}, Labcd/v3$b;->j6()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 5
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->lg:Labcd/v3;

    iget-object v2, v2, Labcd/v3;->j6:Labcd/v3$b;

    invoke-virtual {v2}, Labcd/v3$b;->FH()Labcd/n1;

    move-result-object v2

    check-cast v2, Labcd/u1;

    .line 6
    invoke-virtual {v2}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object v2

    invoke-virtual {v2}, Labcd/k1;->jJ()Z

    move-result v2
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_51

    if-nez v2, :cond_28

    const/4 v0, 0x1

    return v0

    :cond_50
    return v3

    :catchall_51
    move-exception v2

    .line 7
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_59

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_59
    goto :goto_5b

    :goto_5a
    throw v2

    :goto_5b
    goto :goto_5a
.end method

.method public hz(Lcom/aide/codemodel/api/Type;)I
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x2832b783bc316531L
    .end annotation

    const-wide v0, -0xfad92facef95c7bL  # -1.1442592695943007E233

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-virtual {p1}, Labcd/n1;->er()Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object v2, p1

    check-cast v2, Labcd/k1;

    invoke-virtual {v2, p0}, Labcd/k1;->oy(Labcd/u1;)Lcom/aide/codemodel/api/Type;

    move-result-object v2

    goto :goto_28

    .line 3
    :cond_1d
    move-object v2, p1

    check-cast v2, Labcd/a2;

    invoke-virtual {v2}, Labcd/a2;->ko()Labcd/k1;

    move-result-object v2

    invoke-virtual {v2, p0}, Labcd/k1;->oy(Labcd/u1;)Lcom/aide/codemodel/api/Type;

    move-result-object v2

    .line 4
    :goto_28
    invoke-virtual {v2}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {p1}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-eqz v2, :cond_3c

    :cond_34
    invoke-virtual {p0}, Labcd/u1;->gG()Z

    move-result v2

    if-nez v2, :cond_3c

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_3c
    invoke-virtual {p0}, Labcd/u1;->Eq()I

    move-result p1
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    return p1

    :catchall_41
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_49

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    throw v2
.end method

.method public iW()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x118ded3ba22a7f98L
    .end annotation

    const-wide v0, -0x12f8e301aeeaee08L  # -1.5935585045802874E217

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->ei:I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1d

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j3()I
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x299de32d2745daefL
    .end annotation

    const-wide v0, -0xebff41183650b65L  # -3.2653507141559414E237

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p0}, Labcd/u1;->VH()Lcom/aide/codemodel/api/FileEntry;

    move-result-object v3

    invoke-virtual {p0}, Labcd/n1;->XL()Lcom/aide/codemodel/api/abstraction/Language;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->Cz(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->EQ:I
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public jJ()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x17bc83e6fc84487L
    .end annotation

    const-wide v0, -0x10b03e1f02943b6bL  # -1.5046339069689435E228

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->AE()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->sh:Labcd/h3;

    if-nez v2, :cond_19

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_19
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->sh:Labcd/h3;

    invoke-virtual {v2}, Labcd/h3;->EQ()I

    move-result v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return v0

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public jO()Labcd/v3;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x51869b1a6688dfedL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Labcd/v3<",
            "Labcd/u1;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x25231fbd6a87ef99L  # -5.00397840124965E129

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object v2

    invoke-virtual {v2}, Labcd/k1;->e3()Labcd/m3;

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->lg:Labcd/v3;

    if-nez v2, :cond_23

    new-instance v2, Labcd/v3;

    iget-object v3, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v2, v3}, Labcd/v3;-><init>(Lcom/aide/codemodel/api/EntitySpace;)V

    return-object v2

    .line 3
    :cond_23
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v0, v2, Labcd/u1$b;->lg:Labcd/v3;
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    return-object v0

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public jw(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;
    .registers 9
    .annotation runtime Labcd/ey;
        method = -0xde34410e3dbe238L
    .end annotation

    const-wide v0, -0x74f531fdc190140L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->WB()Lcom/aide/codemodel/api/Type;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Labcd/n1;->er()Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object v3, p1

    check-cast v3, Labcd/k1;

    invoke-virtual {v3, p0}, Labcd/k1;->oy(Labcd/u1;)Lcom/aide/codemodel/api/Type;

    move-result-object v3

    goto :goto_29

    .line 3
    :cond_1e
    move-object v3, p1

    check-cast v3, Labcd/a2;

    invoke-virtual {v3}, Labcd/a2;->ko()Labcd/k1;

    move-result-object v3

    invoke-virtual {v3, p0}, Labcd/k1;->oy(Labcd/u1;)Lcom/aide/codemodel/api/Type;

    move-result-object v3

    .line 4
    :goto_29
    invoke-virtual {v2}, Labcd/n1;->nw()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-virtual {v3}, Labcd/n1;->ei()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-virtual {p1}, Labcd/n1;->ei()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 5
    move-object v4, v3

    check-cast v4, Labcd/a2;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Labcd/a2;->mb(Lcom/aide/codemodel/api/Type;Z)Lcom/aide/codemodel/api/Type;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Labcd/n1;->nw()Z

    move-result v5

    if-eqz v5, :cond_70

    move-object v5, v4

    check-cast v5, Labcd/b2;

    .line 7
    invoke-virtual {v5}, Labcd/b2;->WB()Labcd/k1;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Labcd/a2;

    invoke-virtual {v6}, Labcd/a2;->ko()Labcd/k1;

    move-result-object v6

    if-ne v5, v6, :cond_70

    move-object v5, p1

    check-cast v5, Labcd/a2;

    .line 8
    invoke-virtual {v5}, Labcd/a2;->jO()[I

    move-result-object v5

    check-cast v4, Labcd/b2;

    invoke-virtual {v4}, Labcd/b2;->ko()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_70

    .line 9
    invoke-virtual {v2}, Lcom/aide/codemodel/api/Type;->x9()Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 10
    :cond_70
    invoke-virtual {p1}, Labcd/n1;->er()Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 11
    invoke-virtual {p1}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v4

    if-nez v4, :cond_82

    invoke-virtual {v3}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v4

    if-eqz v4, :cond_8d

    :cond_82
    invoke-virtual {p0}, Labcd/u1;->gG()Z

    move-result v4

    if-nez v4, :cond_8d

    invoke-virtual {v2}, Lcom/aide/codemodel/api/Type;->x9()Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 12
    :cond_8d
    invoke-virtual {v3}, Labcd/n1;->ei()Z

    move-result v4

    if-eqz v4, :cond_9a

    check-cast v3, Labcd/a2;

    invoke-virtual {v3, v2}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    :cond_9a
    return-object v2

    .line 13
    :cond_9b
    invoke-virtual {p1}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v4

    if-nez v4, :cond_a7

    invoke-virtual {v3}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v4

    if-eqz v4, :cond_b9

    :cond_a7
    invoke-virtual {p0}, Labcd/u1;->gG()Z

    move-result v4

    if-nez v4, :cond_b9

    move-object v3, p1

    check-cast v3, Labcd/a2;

    invoke-virtual {v2}, Lcom/aide/codemodel/api/Type;->x9()Lcom/aide/codemodel/api/Type;

    move-result-object v2

    invoke-virtual {v3, v2}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 14
    :cond_b9
    invoke-virtual {v3}, Labcd/n1;->ei()Z

    move-result v4

    if-nez v4, :cond_c7

    move-object v3, p1

    check-cast v3, Labcd/a2;

    invoke-virtual {v3, v2}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 15
    :cond_c7
    move-object v4, p1

    check-cast v4, Labcd/a2;

    check-cast v3, Labcd/a2;

    invoke-virtual {v3, v2}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object v2

    invoke-virtual {v4, v2}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object p1
    :try_end_d4
    .catchall {:try_start_5 .. :try_end_d4} :catchall_d5

    return-object p1

    :catchall_d5
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_dd

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_dd
    throw v2
.end method

.method public k2(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;ILcom/aide/codemodel/api/Type;[Lcom/aide/codemodel/api/Type;II[Lcom/aide/codemodel/api/Type;II)Lcom/aide/codemodel/api/Type;
    .registers 37
    .annotation runtime Labcd/ey;
        method = 0x1278067023bfe47fL
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p3

    move/from16 v15, p6

    move/from16 v12, p7

    move/from16 v11, p9

    move/from16 v10, p10

    const/16 v16, 0x9

    const/16 v17, 0x8

    const/16 v18, 0x7

    const/16 v19, 0x6

    const/16 v20, 0x5

    const/16 v21, 0x4

    const/16 v22, 0x3

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v9, 0xa

    const-wide v7, -0x17f4206c912fe395L  # -1.5896309257901422E193

    :try_start_27
    sget-boolean v0, Labcd/u1;->J8:Z
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_ae

    if-eqz v0, :cond_64

    :try_start_2b
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v25

    aput-object p2, v0, v24

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v23

    aput-object p4, v0, v22

    aput-object p5, v0, v21

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v20

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v19

    aput-object p8, v0, v18

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v17

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v16

    invoke-static {v7, v8, v13, v0}, Labcd/iy;->QX(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_64

    :catchall_5e
    move-exception v0

    move-object/from16 v1, p4

    :goto_61
    const/16 v15, 0xa

    goto :goto_b3

    :cond_64
    :goto_64
    if-nez p4, :cond_6c

    .line 1
    invoke-virtual/range {p0 .. p0}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object v0
    :try_end_6a
    .catchall {:try_start_2b .. :try_end_6a} :catchall_5e

    move-object v1, v0

    goto :goto_6e

    :cond_6c
    move-object/from16 v1, p4

    .line 2
    :goto_6e
    :try_start_6e
    invoke-virtual {v1}, Lcom/aide/codemodel/api/Type;->Qq()Lcom/aide/codemodel/api/Type;

    move-result-object v6
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_ac

    .line 3
    :try_start_72
    invoke-virtual {v13, v6}, Labcd/u1;->hz(Lcom/aide/codemodel/api/Type;)I

    move-result v0
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_a9

    if-eqz v0, :cond_9f

    .line 4
    :try_start_78
    iget-object v0, v13, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    iget-object v1, v0, Lcom/aide/codemodel/api/EntitySpace;->rN:Labcd/u1$c;
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_9b

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p0

    move/from16 v5, p3

    move-object/from16 p4, v6

    move-object/from16 v7, p5

    move/from16 v8, p6

    const/16 v15, 0xa

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    :try_start_94
    invoke-virtual/range {v1 .. v12}, Labcd/u1$c;->VH(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;Labcd/u1;ILcom/aide/codemodel/api/Type;[Lcom/aide/codemodel/api/Type;II[Lcom/aide/codemodel/api/Type;II)Lcom/aide/codemodel/api/Type;

    move-result-object v0
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_99

    return-object v0

    :catchall_99
    move-exception v0

    goto :goto_b1

    :catchall_9b
    move-exception v0

    move-object/from16 p4, v6

    goto :goto_af

    :cond_9f
    move-object v1, v6

    const/16 v15, 0xa

    .line 5
    :try_start_a2
    invoke-virtual {v13, v1, v14}, Labcd/u1;->zh(Lcom/aide/codemodel/api/Type;I)Lcom/aide/codemodel/api/Type;

    move-result-object v0
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_a7

    return-object v0

    :catchall_a7
    move-exception v0

    goto :goto_b3

    :catchall_a9
    move-exception v0

    move-object v1, v6

    goto :goto_61

    :catchall_ac
    move-exception v0

    goto :goto_61

    :catchall_ae
    move-exception v0

    :goto_af
    const/16 v15, 0xa

    :goto_b1
    move-object/from16 v1, p4

    :goto_b3
    sget-boolean v2, Labcd/u1;->Ws:Z

    if-eqz v2, :cond_f6

    new-array v2, v15, [Ljava/lang/Object;

    aput-object p1, v2, v25

    aput-object p2, v2, v24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v23

    aput-object v1, v2, v22

    aput-object p5, v2, v21

    new-instance v1, Ljava/lang/Integer;

    move/from16 v3, p6

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v2, v20

    new-instance v1, Ljava/lang/Integer;

    move/from16 v3, p7

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v2, v19

    aput-object p8, v2, v18

    new-instance v1, Ljava/lang/Integer;

    move/from16 v3, p9

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v2, v17

    new-instance v1, Ljava/lang/Integer;

    move/from16 v3, p10

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v2, v16

    const-wide v3, -0x17f4206c912fe395L  # -1.5896309257901422E193

    invoke-static {v0, v3, v4, v13, v2}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_f6
    goto :goto_f8

    :goto_f7
    throw v0

    :goto_f8
    goto :goto_f7
.end method

.method public kQ(ILcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x49f4b06c10434d2cL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_11

    const-wide v0, -0x299325e19ca1dc0cL  # -2.1175066280682718E108

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, v2, p2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    invoke-virtual {p0, p1}, Labcd/u1;->XX(I)Lcom/aide/codemodel/api/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Labcd/n1;->er()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 3
    move-object v1, p2

    check-cast v1, Labcd/k1;

    invoke-virtual {v1, p0}, Labcd/k1;->oy(Labcd/u1;)Lcom/aide/codemodel/api/Type;

    move-result-object v1

    .line 4
    invoke-virtual {p2}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v1}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_2e
    invoke-virtual {p0}, Labcd/u1;->gG()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v0}, Lcom/aide/codemodel/api/Type;->x9()Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 5
    :cond_39
    invoke-virtual {v1}, Labcd/n1;->ei()Z

    move-result v2

    if-eqz v2, :cond_46

    check-cast v1, Labcd/a2;

    invoke-virtual {v1, v0}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    :cond_46
    return-object v0

    .line 6
    :cond_47
    move-object v1, p2

    check-cast v1, Labcd/a2;

    invoke-virtual {v1}, Labcd/a2;->ko()Labcd/k1;

    move-result-object v1

    invoke-virtual {v1, p0}, Labcd/k1;->oy(Labcd/u1;)Lcom/aide/codemodel/api/Type;

    move-result-object v1

    .line 7
    invoke-virtual {p2}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-nez v2, :cond_5e

    invoke-virtual {v1}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-eqz v2, :cond_70

    :cond_5e
    invoke-virtual {p0}, Labcd/u1;->gG()Z

    move-result v2

    if-nez v2, :cond_70

    move-object v1, p2

    check-cast v1, Labcd/a2;

    invoke-virtual {v0}, Lcom/aide/codemodel/api/Type;->x9()Lcom/aide/codemodel/api/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 8
    :cond_70
    invoke-virtual {v1}, Labcd/n1;->ei()Z

    move-result v2

    if-nez v2, :cond_7e

    move-object v1, p2

    check-cast v1, Labcd/a2;

    invoke-virtual {v1, v0}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 9
    :cond_7e
    move-object v2, p2

    check-cast v2, Labcd/a2;

    check-cast v1, Labcd/a2;

    invoke-virtual {v1, v0}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object p1
    :try_end_8b
    .catchall {:try_start_0 .. :try_end_8b} :catchall_8c

    return-object p1

    :catchall_8c
    move-exception v0

    sget-boolean v1, Labcd/u1;->Ws:Z

    if-eqz v1, :cond_a1

    const-wide v2, -0x299325e19ca1dc0cL  # -2.1175066280682718E108

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a1
    throw v0
.end method

.method public kf()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x44b6d507ef1265f0L
    .end annotation

    const-wide v0, -0x4f0bebe6e4f56b10L  # -7.102520529993559E-73

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v2, v2, Labcd/u1$b;->BT:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_23

    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-boolean v0, v2, Labcd/u1$b;->vy:Z
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_25

    if-nez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public ko()I
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xf4452c0bdf56df0L
    .end annotation

    const-wide v0, 0x4762eda17aa33aa0L  # 7.862485457468808E35

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p0}, Labcd/u1;->VH()Lcom/aide/codemodel/api/FileEntry;

    move-result-object v3

    invoke-virtual {p0}, Labcd/n1;->XL()Lcom/aide/codemodel/api/abstraction/Language;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->Cz(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->J0:I
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public lp(I)V
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x23be8fd39d9efc1bL
    .end annotation

    const-wide v0, 0x430f118d80ae877L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iput p1, v2, Labcd/u1$b;->j6:I
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    .line 2
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public mb(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;Lcom/aide/codemodel/api/Type;[Lcom/aide/codemodel/api/Type;II[Lcom/aide/codemodel/api/Type;II)Lcom/aide/codemodel/api/Type;
    .registers 35
    .annotation runtime Labcd/ey;
        method = -0x3a446a336030d280L
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p5

    move/from16 v11, p6

    move/from16 v10, p8

    move/from16 v9, p9

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v8, 0x9

    const-wide v6, -0x2e836743f4908580L  # -3.4721101751804E84

    const/16 v24, 0x1

    :try_start_27
    sget-boolean v0, Labcd/u1;->J8:Z
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_d2

    if-eqz v0, :cond_5e

    :try_start_2b
    new-array v0, v8, [Ljava/lang/Object;

    aput-object v13, v0, v23

    aput-object v14, v0, v24

    aput-object p3, v0, v22

    aput-object p4, v0, v21

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v20

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v19

    aput-object p7, v0, v18

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v17

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v16

    invoke-static {v6, v7, v12, v0}, Labcd/iy;->QX(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_5e

    :catchall_57
    move-exception v0

    move-object/from16 v5, p3

    :goto_5a
    const/16 v15, 0x9

    goto/16 :goto_d7

    :cond_5e
    :goto_5e
    if-nez p3, :cond_66

    .line 1
    invoke-virtual/range {p0 .. p0}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_2b .. :try_end_64} :catchall_57

    move-object v1, v0

    goto :goto_68

    :cond_66
    move-object/from16 v1, p3

    .line 2
    :goto_68
    :try_start_68
    invoke-virtual {v1}, Lcom/aide/codemodel/api/Type;->Qq()Lcom/aide/codemodel/api/Type;

    move-result-object v5
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_cd

    .line 3
    :try_start_6c
    invoke-virtual {v12, v5}, Labcd/u1;->hz(Lcom/aide/codemodel/api/Type;)I

    move-result v0
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_ca

    if-eqz v0, :cond_c0

    .line 4
    :try_start_72
    invoke-virtual/range {p0 .. p0}, Labcd/u1;->Z1()Z

    move-result v0
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_bc

    if-eqz v0, :cond_9b

    :try_start_78
    invoke-virtual/range {p0 .. p0}, Labcd/u1;->oY()I

    move-result v0

    if-ne v11, v0, :cond_90

    add-int/lit8 v0, v11, -0x1

    aget-object v1, p4, v0

    if-eqz v1, :cond_90

    aget-object v1, p4, v0

    .line 5
    invoke-virtual {v12, v0}, Labcd/u1;->qp(I)Lcom/aide/codemodel/api/Type;

    move-result-object v0

    invoke-direct {v12, v13, v14, v1, v0}, Labcd/u1;->QO(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;Lcom/aide/codemodel/api/Type;Lcom/aide/codemodel/api/Type;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 6
    :cond_90
    invoke-virtual {v12, v5}, Labcd/u1;->jw(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/codemodel/api/Type;->x9()Lcom/aide/codemodel/api/Type;

    move-result-object v0
    :try_end_98
    .catchall {:try_start_78 .. :try_end_98} :catchall_99

    return-object v0

    :catchall_99
    move-exception v0

    goto :goto_5a

    .line 7
    :cond_9b
    :try_start_9b
    iget-object v0, v12, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    iget-object v1, v0, Lcom/aide/codemodel/api/EntitySpace;->rN:Labcd/u1$c;
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_bc

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p0

    move-object/from16 p3, v5

    move-object/from16 v6, p4

    move/from16 v7, p5

    const/16 v15, 0x9

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    :try_start_b5
    invoke-virtual/range {v1 .. v11}, Labcd/u1$c;->Zo(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;Labcd/u1;Lcom/aide/codemodel/api/Type;[Lcom/aide/codemodel/api/Type;II[Lcom/aide/codemodel/api/Type;II)Lcom/aide/codemodel/api/Type;

    move-result-object v0
    :try_end_b9
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_ba

    return-object v0

    :catchall_ba
    move-exception v0

    goto :goto_d5

    :catchall_bc
    move-exception v0

    move-object/from16 p3, v5

    goto :goto_5a

    :cond_c0
    move-object v1, v5

    const/16 v15, 0x9

    .line 8
    :try_start_c3
    invoke-virtual {v12, v1}, Labcd/u1;->jw(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object v0
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_c8

    return-object v0

    :catchall_c8
    move-exception v0

    goto :goto_d0

    :catchall_ca
    move-exception v0

    move-object v1, v5

    goto :goto_5a

    :catchall_cd
    move-exception v0

    const/16 v15, 0x9

    :goto_d0
    move-object v5, v1

    goto :goto_d7

    :catchall_d2
    move-exception v0

    const/16 v15, 0x9

    :goto_d5
    move-object/from16 v5, p3

    :goto_d7
    sget-boolean v1, Labcd/u1;->Ws:Z

    if-eqz v1, :cond_113

    new-array v1, v15, [Ljava/lang/Object;

    aput-object v13, v1, v23

    aput-object v14, v1, v24

    aput-object v5, v1, v22

    aput-object p4, v1, v21

    new-instance v2, Ljava/lang/Integer;

    move/from16 v3, p5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v20

    new-instance v2, Ljava/lang/Integer;

    move/from16 v3, p6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v19

    aput-object p7, v1, v18

    new-instance v2, Ljava/lang/Integer;

    move/from16 v3, p8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v17

    new-instance v2, Ljava/lang/Integer;

    move/from16 v3, p9

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v16

    const-wide v2, -0x2e836743f4908580L  # -3.4721101751804E84

    invoke-static {v0, v2, v3, v12, v1}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_113
    goto :goto_115

    :goto_114
    throw v0

    :goto_115
    goto :goto_114
.end method

.method public n5()V
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0xa30aab14ac2581dL
    .end annotation

    const-wide v0, 0x31ad1a1a16e2ff27L  # 2.10830412553502E-69

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    .line 1
    iput-object v2, p0, Labcd/u1;->we:Labcd/k1;

    .line 2
    iput-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    .line 3
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public oY()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x7f213859f8684b0L
    .end annotation

    const-wide v0, 0x23ea8f8dba871e90L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->Mr:Labcd/h3;

    if-nez v2, :cond_19

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_19
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->Mr:Labcd/h3;

    invoke-virtual {v2}, Labcd/h3;->EQ()I

    move-result v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return v0

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public oy(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;Lcom/aide/codemodel/api/Type;[Lcom/aide/codemodel/api/Type;II[Lcom/aide/codemodel/api/Type;II)Z
    .registers 35
    .annotation runtime Labcd/ey;
        method = -0xbd7244614ab30d4L
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p8

    move/from16 v11, p9

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v10, 0x9

    const-wide v8, -0x1facf6131b63316cL  # -1.0210727365105764E156

    :try_start_23
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_52

    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v24

    aput-object p2, v0, v23

    aput-object p3, v0, v22

    aput-object p4, v0, v21

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v20

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v19

    aput-object p7, v0, v18

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v17

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v16

    invoke-static {v8, v9, v12, v0}, Labcd/iy;->QX(JLjava/lang/Object;[Ljava/lang/Object;)V

    .line 1
    :cond_52
    iget-object v0, v12, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    iget-object v1, v0, Lcom/aide/codemodel/api/EntitySpace;->rN:Labcd/u1$c;
    :try_end_56
    .catchall {:try_start_23 .. :try_end_56} :catchall_73

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    const/16 v12, 0x9

    move/from16 v10, p8

    move/from16 v11, p9

    :try_start_6c
    invoke-virtual/range {v1 .. v11}, Labcd/u1$c;->gn(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;Labcd/u1;Lcom/aide/codemodel/api/Type;[Lcom/aide/codemodel/api/Type;II[Lcom/aide/codemodel/api/Type;II)Z

    move-result v0
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_71

    return v0

    :catchall_71
    move-exception v0

    goto :goto_76

    :catchall_73
    move-exception v0

    const/16 v12, 0x9

    :goto_76
    sget-boolean v1, Labcd/u1;->Ws:Z

    if-eqz v1, :cond_af

    new-array v1, v12, [Ljava/lang/Object;

    aput-object p1, v1, v24

    aput-object p2, v1, v23

    aput-object p3, v1, v22

    aput-object p4, v1, v21

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v20

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v19

    aput-object p7, v1, v18

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v17

    new-instance v2, Ljava/lang/Integer;

    move/from16 v3, p9

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v16

    const-wide v3, -0x1facf6131b63316cL  # -1.0210727365105764E156

    move-object/from16 v2, p0

    invoke-static {v0, v3, v4, v2, v1}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_b1

    :cond_af
    move-object/from16 v2, p0

    :goto_b1
    throw v0
.end method

.method public pN()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0xdef6f861681ba9bL
    .end annotation

    const-wide v0, -0x3227f9276c147c47L  # -1.0121245136030676E67

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->ei:I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1d

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public pO()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2a290bc5088e9e7fL
    .end annotation

    const-wide v0, -0x4e2bba204a3e9f3bL  # -1.1749458050050333E-68

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->AE()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-boolean v0, v2, Labcd/u1$b;->cn:Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public q7()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x5b6620b1d83bd8L
    .end annotation

    const-wide v0, -0x1ea1b2b529844d78L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->Jl()Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_14
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-boolean v2, v2, Labcd/u1$b;->Hw:Z

    if-nez v2, :cond_28

    .line 3
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Labcd/u1$b;->Hw:Z

    .line 4
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {v2, p0}, Lcom/aide/codemodel/api/EntitySpace;->sg(Labcd/u1;)V

    .line 5
    :cond_28
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-boolean v0, v2, Labcd/u1$b;->ro:Z
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2f

    return v0

    :catchall_2f
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public qp(I)Lcom/aide/codemodel/api/Type;
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0xe5358bba14ade77L
    .end annotation

    const-wide v0, 0xfa99c366a03bab5L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->AE()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->Mr:Labcd/h3;

    invoke-virtual {v2, p1}, Labcd/h3;->v5(I)Labcd/n1;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 3
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->Mr:Labcd/h3;

    invoke-virtual {v2, p1}, Labcd/h3;->v5(I)Labcd/n1;

    move-result-object v2

    check-cast v2, Lcom/aide/codemodel/api/Type;

    return-object v2

    .line 4
    :cond_28
    new-instance v2, Labcd/e4;

    invoke-direct {v2}, Labcd/e4;-><init>()V

    throw v2
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v2

    .line 5
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_3b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method public sE()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x2a1c253f97bd4228L
    .end annotation

    const-wide v0, -0x1bdfe806642b3b58L  # -1.990224764119802E174

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->aM()I

    move-result v2

    invoke-static {v2}, Labcd/y1;->v5(I)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public sM()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1e7335714541ed5fL
    .end annotation

    const-wide v0, -0x1dce9fba68aef34dL  # -1.000619577178262E165

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->BR()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->ei:I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1c

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public sg()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x66dc682ed6a5a0fL
    .end annotation

    const-wide v0, 0x23d364821aca9205L  # 4.168868895713684E-136

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->AE()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->sh:Labcd/h3;

    if-eqz v2, :cond_25

    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->sh:Labcd/h3;

    invoke-virtual {v2}, Labcd/h3;->EQ()I

    move-result v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_27

    if-lez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :catchall_27
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public store(Lcom/aide/codemodel/api/collections/StoreInputStream;)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = 0x34ccbfd66fc9746cL
    .end annotation

    const-wide v0, 0x2b2fcf550b1b4414L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-super {p0, p1}, Labcd/n1;->store(Lcom/aide/codemodel/api/collections/StoreInputStream;)V

    .line 2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Labcd/u1;->u7:I

    .line 3
    iget-object v2, p0, Labcd/u1;->Zo:Lcom/aide/codemodel/api/FileSpace;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/codemodel/api/FileSpace;->getFileEntry(I)Lcom/aide/codemodel/api/FileEntry;

    move-result-object v2

    iput-object v2, p0, Labcd/u1;->tp:Lcom/aide/codemodel/api/FileEntry;

    .line 4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Labcd/u1;->EQ:I

    .line 5
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/codemodel/api/EntitySpace;->getEntity(I)Labcd/n1;

    move-result-object v2

    check-cast v2, Labcd/k1;

    iput-object v2, p0, Labcd/u1;->we:Labcd/k1;

    .line 6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1c5

    .line 7
    new-instance v2, Labcd/u1$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Labcd/u1$b;-><init>(Labcd/u1$a;)V

    iput-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    .line 8
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->gn:I

    .line 9
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->tp:I

    .line 10
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->u7:I

    .line 11
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->EQ:I

    .line 12
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->we:I

    .line 13
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->J0:I

    .line 14
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->J8:I

    .line 15
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->Ws:I

    .line 16
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->v5:I

    .line 17
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->Zo:I

    .line 18
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->VH:I

    .line 19
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v3, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->getEntity(I)Labcd/n1;

    move-result-object v3

    check-cast v3, Lcom/aide/codemodel/api/Type;

    iput-object v3, v2, Labcd/u1$b;->gW:Lcom/aide/codemodel/api/Type;

    .line 20
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->BT:I

    .line 21
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Labcd/u1$b;->vy:Z

    .line 22
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Labcd/u1$b;->FH:Z

    .line 23
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Labcd/u1$b;->DW:Z

    .line 24
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->P8:I

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Labcd/u1$b;->KD:Ljava/lang/String;

    .line 26
    :cond_df
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Labcd/u1$b;->ro:Z

    .line 27
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Labcd/u1$b;->nw:J

    .line 28
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Labcd/u1$b;->SI:Z

    .line 29
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Labcd/u1$b;->Hw:Z

    .line 30
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Labcd/u1$b;->cn:Z

    .line 31
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_121

    .line 32
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    new-instance v3, Labcd/h3;

    iget-object v4, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v3, v4, p1}, Labcd/h3;-><init>(Lcom/aide/codemodel/api/EntitySpace;Lcom/aide/codemodel/api/collections/StoreInputStream;)V

    iput-object v3, v2, Labcd/u1$b;->sh:Labcd/h3;

    .line 33
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    new-instance v3, Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-direct {v3, p1}, Lcom/aide/codemodel/api/collections/ListOfInt;-><init>(Lcom/aide/codemodel/api/collections/StoreInputStream;)V

    iput-object v3, v2, Labcd/u1$b;->cb:Lcom/aide/codemodel/api/collections/ListOfInt;

    .line 34
    :cond_121
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->ei:I

    .line 35
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Labcd/u1$b;->QX:I

    .line 36
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Labcd/u1$b;->XL:Z

    .line 37
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Labcd/u1$b;->aM:Z

    .line 38
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_152

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    new-instance v3, Labcd/h3;

    iget-object v4, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v3, v4, p1}, Labcd/h3;-><init>(Lcom/aide/codemodel/api/EntitySpace;Lcom/aide/codemodel/api/collections/StoreInputStream;)V

    iput-object v3, v2, Labcd/u1$b;->Mr:Labcd/h3;

    .line 39
    :cond_152
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_161

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    new-instance v3, Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-direct {v3, p1}, Lcom/aide/codemodel/api/collections/ListOfInt;-><init>(Lcom/aide/codemodel/api/collections/StoreInputStream;)V

    iput-object v3, v2, Labcd/u1$b;->U2:Lcom/aide/codemodel/api/collections/ListOfInt;

    .line 40
    :cond_161
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_170

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    new-instance v3, Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-direct {v3, p1}, Lcom/aide/codemodel/api/collections/ListOfInt;-><init>(Lcom/aide/codemodel/api/collections/StoreInputStream;)V

    iput-object v3, v2, Labcd/u1$b;->a8:Lcom/aide/codemodel/api/collections/ListOfInt;

    .line 41
    :cond_170
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_181

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    new-instance v3, Labcd/h3;

    iget-object v4, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v3, v4, p1}, Labcd/h3;-><init>(Lcom/aide/codemodel/api/EntitySpace;Lcom/aide/codemodel/api/collections/StoreInputStream;)V

    iput-object v3, v2, Labcd/u1$b;->j3:Labcd/h3;

    .line 42
    :cond_181
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_192

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    new-instance v3, Labcd/v3;

    iget-object v4, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v3, v4, p1}, Labcd/v3;-><init>(Lcom/aide/codemodel/api/EntitySpace;Lcom/aide/codemodel/api/collections/StoreInputStream;)V

    iput-object v3, v2, Labcd/u1$b;->lg:Labcd/v3;

    .line 43
    :cond_192
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1a3

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    new-instance v3, Labcd/m3;

    iget-object v4, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v3, v4, p1}, Labcd/m3;-><init>(Lcom/aide/codemodel/api/EntitySpace;Lcom/aide/codemodel/api/collections/StoreInputStream;)V

    iput-object v3, v2, Labcd/u1$b;->rN:Labcd/m3;

    .line 44
    :cond_1a3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1b4

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    new-instance v3, Labcd/v3;

    iget-object v4, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v3, v4, p1}, Labcd/v3;-><init>(Lcom/aide/codemodel/api/EntitySpace;Lcom/aide/codemodel/api/collections/StoreInputStream;)V

    iput-object v3, v2, Labcd/u1$b;->er:Labcd/v3;

    .line 45
    :cond_1b4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1c5

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    new-instance v3, Labcd/h3;

    iget-object v4, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v3, v4, p1}, Labcd/h3;-><init>(Lcom/aide/codemodel/api/EntitySpace;Lcom/aide/codemodel/api/collections/StoreInputStream;)V

    iput-object v3, v2, Labcd/u1$b;->yS:Labcd/h3;
    :try_end_1c5
    .catchall {:try_start_5 .. :try_end_1c5} :catchall_1c6

    :cond_1c5
    return-void

    :catchall_1c6
    move-exception v2

    .line 46
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_1ce

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1ce
    throw v2
.end method

.method public store(Lcom/aide/codemodel/api/collections/StoreOutputStream;)V
    .registers 9
    .annotation runtime Labcd/ey;
        method = 0x21d7585f34338c90L
    .end annotation

    const-wide v0, 0x28198d3e4c5b6cd8L  # 1.621220231706095E-115

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_c
    invoke-super {p0, p1}, Labcd/n1;->store(Lcom/aide/codemodel/api/collections/StoreOutputStream;)V

    .line 2
    iget v2, p0, Labcd/u1;->u7:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3
    iget-object v2, p0, Labcd/u1;->tp:Lcom/aide/codemodel/api/FileEntry;

    invoke-virtual {v2}, Lcom/aide/codemodel/api/FileEntry;->getID()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 4
    iget v2, p0, Labcd/u1;->EQ:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 5
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    iget-object v3, p0, Labcd/u1;->we:Labcd/k1;

    invoke-virtual {v2, v3}, Lcom/aide/codemodel/api/EntitySpace;->ye(Labcd/n1;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 6
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 7
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    if-eqz v2, :cond_1f9

    .line 8
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->gn:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 9
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->tp:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 10
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->u7:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 11
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->EQ:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 12
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->we:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 13
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->J0:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 14
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->J8:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 15
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->Ws:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 16
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->v5:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 17
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->Zo:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 18
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->VH:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 19
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    iget-object v5, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v5, v5, Labcd/u1$b;->gW:Lcom/aide/codemodel/api/Type;

    invoke-virtual {v2, v5}, Lcom/aide/codemodel/api/EntitySpace;->ye(Labcd/n1;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 20
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->BT:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 21
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-boolean v2, v2, Labcd/u1$b;->vy:Z

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 22
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-boolean v2, v2, Labcd/u1$b;->FH:Z

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 23
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-boolean v2, v2, Labcd/u1$b;->DW:Z

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 24
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->P8:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 25
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->KD:Ljava/lang/String;

    if-eqz v2, :cond_c2

    const/4 v2, 0x1

    goto :goto_c3

    :cond_c2
    const/4 v2, 0x0

    :goto_c3
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 26
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->KD:Ljava/lang/String;

    if-eqz v2, :cond_d3

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->KD:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 27
    :cond_d3
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-boolean v2, v2, Labcd/u1$b;->ro:Z

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 28
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-wide v5, v2, Labcd/u1$b;->nw:J

    invoke-virtual {p1, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 29
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-boolean v2, v2, Labcd/u1$b;->SI:Z

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 30
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-boolean v2, v2, Labcd/u1$b;->Hw:Z

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 31
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-boolean v2, v2, Labcd/u1$b;->cn:Z

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 32
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->sh:Labcd/h3;

    if-eqz v2, :cond_fe

    const/4 v2, 0x1

    goto :goto_ff

    :cond_fe
    const/4 v2, 0x0

    :goto_ff
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 33
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->sh:Labcd/h3;

    if-eqz v2, :cond_116

    .line 34
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->sh:Labcd/h3;

    invoke-virtual {v2, p1}, Labcd/h3;->store(Lcom/aide/codemodel/api/collections/StoreOutputStream;)V

    .line 35
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->cb:Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-virtual {v2, p1}, Lcom/aide/codemodel/api/collections/ListOfInt;->store(Lcom/aide/codemodel/api/collections/StoreOutputStream;)V

    .line 36
    :cond_116
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->ei:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 37
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget v2, v2, Labcd/u1$b;->QX:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 38
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-boolean v2, v2, Labcd/u1$b;->XL:Z

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 39
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-boolean v2, v2, Labcd/u1$b;->aM:Z

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 40
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->Mr:Labcd/h3;

    if-eqz v2, :cond_13a

    const/4 v2, 0x1

    goto :goto_13b

    :cond_13a
    const/4 v2, 0x0

    :goto_13b
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 41
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->Mr:Labcd/h3;

    if-eqz v2, :cond_14b

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->Mr:Labcd/h3;

    invoke-virtual {v2, p1}, Labcd/h3;->store(Lcom/aide/codemodel/api/collections/StoreOutputStream;)V

    .line 42
    :cond_14b
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->U2:Lcom/aide/codemodel/api/collections/ListOfInt;

    if-eqz v2, :cond_153

    const/4 v2, 0x1

    goto :goto_154

    :cond_153
    const/4 v2, 0x0

    :goto_154
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 43
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->U2:Lcom/aide/codemodel/api/collections/ListOfInt;

    if-eqz v2, :cond_164

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->U2:Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-virtual {v2, p1}, Lcom/aide/codemodel/api/collections/ListOfInt;->store(Lcom/aide/codemodel/api/collections/StoreOutputStream;)V

    .line 44
    :cond_164
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->a8:Lcom/aide/codemodel/api/collections/ListOfInt;

    if-eqz v2, :cond_16c

    const/4 v2, 0x1

    goto :goto_16d

    :cond_16c
    const/4 v2, 0x0

    :goto_16d
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 45
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->a8:Lcom/aide/codemodel/api/collections/ListOfInt;

    if-eqz v2, :cond_17d

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->a8:Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-virtual {v2, p1}, Lcom/aide/codemodel/api/collections/ListOfInt;->store(Lcom/aide/codemodel/api/collections/StoreOutputStream;)V

    .line 46
    :cond_17d
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->j3:Labcd/h3;

    if-eqz v2, :cond_185

    const/4 v2, 0x1

    goto :goto_186

    :cond_185
    const/4 v2, 0x0

    :goto_186
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 47
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->j3:Labcd/h3;

    if-eqz v2, :cond_196

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->j3:Labcd/h3;

    invoke-virtual {v2, p1}, Labcd/h3;->store(Lcom/aide/codemodel/api/collections/StoreOutputStream;)V

    .line 48
    :cond_196
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->lg:Labcd/v3;

    if-eqz v2, :cond_19e

    const/4 v2, 0x1

    goto :goto_19f

    :cond_19e
    const/4 v2, 0x0

    :goto_19f
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 49
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->lg:Labcd/v3;

    if-eqz v2, :cond_1af

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->lg:Labcd/v3;

    invoke-virtual {v2, p1}, Labcd/v3;->store(Lcom/aide/codemodel/api/collections/StoreOutputStream;)V

    .line 50
    :cond_1af
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->rN:Labcd/m3;

    if-eqz v2, :cond_1b7

    const/4 v2, 0x1

    goto :goto_1b8

    :cond_1b7
    const/4 v2, 0x0

    :goto_1b8
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 51
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->rN:Labcd/m3;

    if-eqz v2, :cond_1c8

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->rN:Labcd/m3;

    invoke-virtual {v2, p1}, Labcd/m3;->store(Lcom/aide/codemodel/api/collections/StoreOutputStream;)V

    .line 52
    :cond_1c8
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->er:Labcd/v3;

    if-eqz v2, :cond_1d0

    const/4 v2, 0x1

    goto :goto_1d1

    :cond_1d0
    const/4 v2, 0x0

    :goto_1d1
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 53
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->er:Labcd/v3;

    if-eqz v2, :cond_1e1

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->er:Labcd/v3;

    invoke-virtual {v2, p1}, Labcd/v3;->store(Lcom/aide/codemodel/api/collections/StoreOutputStream;)V

    .line 54
    :cond_1e1
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->yS:Labcd/h3;

    if-eqz v2, :cond_1e8

    goto :goto_1e9

    :cond_1e8
    const/4 v3, 0x0

    :goto_1e9
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 55
    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->yS:Labcd/h3;

    if-eqz v2, :cond_1f9

    iget-object v2, p0, Labcd/u1;->J0:Labcd/u1$b;

    iget-object v2, v2, Labcd/u1$b;->yS:Labcd/h3;

    invoke-virtual {v2, p1}, Labcd/h3;->store(Lcom/aide/codemodel/api/collections/StoreOutputStream;)V
    :try_end_1f9
    .catchall {:try_start_5 .. :try_end_1f9} :catchall_1fa

    :cond_1f9
    return-void

    :catchall_1fa
    move-exception v2

    .line 56
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_202

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_202
    throw v2
.end method

.method public sy(Lcom/aide/codemodel/api/Type;I)V
    .registers 10
    .annotation runtime Labcd/ey;
        method = -0x32db99b7a315254bL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_11

    const-wide v0, -0x4de186cf17e2da77L  # -2.8258033002777734E-67

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, p1, v2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_11
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->Mr:Labcd/h3;

    invoke-virtual {v0, p2, p1}, Labcd/h3;->u7(ILabcd/n1;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    .line 2
    sget-boolean v1, Labcd/u1;->Ws:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x4de186cf17e2da77L  # -2.8258033002777734E-67

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public u7()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x54d0672124b07f8L
    .end annotation

    const-wide v0, -0x879649d1d89e2f8L  # -5.831612615524317E267

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-super {p0}, Labcd/n1;->u7()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public v5()I
    .registers 6
    .annotation runtime Labcd/ey;
        method = 0x35e44c6b345dc36fL
    .end annotation

    const-wide v0, -0x4f408456a51d20dL

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {p0}, Labcd/u1;->VH()Lcom/aide/codemodel/api/FileEntry;

    move-result-object v3

    invoke-virtual {p0}, Labcd/n1;->XL()Lcom/aide/codemodel/api/abstraction/Language;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/codemodel/api/EntitySpace;->Cz(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;)V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->Ws:I
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public vJ(Labcd/u1;)V
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x142c766cf4e47bafL
    .end annotation

    const-wide v0, -0x11aa68cc01abd283L  # -3.121779741120554E223

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->tp(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eq p1, p0, :cond_2c

    .line 1
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->lg:Labcd/v3;

    if-nez v2, :cond_23

    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    new-instance v3, Labcd/v3;

    iget-object v4, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-direct {v3, v4}, Labcd/v3;-><init>(Lcom/aide/codemodel/api/EntitySpace;)V

    iput-object v3, v2, Labcd/u1$b;->lg:Labcd/v3;

    .line 2
    :cond_23
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->lg:Labcd/v3;

    invoke-virtual {v2, p1}, Labcd/v3;->gn(Labcd/n1;)V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    :cond_2c
    return-void

    :catchall_2d
    move-exception v2

    .line 3
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0, p1}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public w9()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x561e8a6061fa705fL
    .end annotation

    const-wide v0, 0x264ca12a03e6c8a5L  # 3.383500781248261E-124

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->Jl()Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_14
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-boolean v2, v2, Labcd/u1$b;->Hw:Z

    if-nez v2, :cond_28

    .line 3
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Labcd/u1$b;->Hw:Z

    .line 4
    iget-object v2, p0, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    invoke-virtual {v2, p0}, Lcom/aide/codemodel/api/EntitySpace;->sg(Labcd/u1;)V

    .line 5
    :cond_28
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-boolean v0, v2, Labcd/u1$b;->SI:Z
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2f

    return v0

    :catchall_2f
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public wc(I)I
    .registers 6
    .annotation runtime Labcd/ey;
        method = -0x78e3459e0f65500L
    .end annotation

    const-wide v0, 0x2bc5b5d2e1bc740L

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/iy;->u7(JLjava/lang/Object;I)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->AE()V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v2, v2, Labcd/u1$b;->cb:Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-virtual {v2, p1}, Lcom/aide/codemodel/api/collections/ListOfInt;->get(I)I

    move-result p1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return p1

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/iy;->j3(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public we()I
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x12cd98b17e319a69L
    .end annotation

    const-wide v0, -0x1a33b9805aceb085L  # -2.3465830231040635E182

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    iget v0, p0, Labcd/u1;->u7:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public x9(III)V
    .registers 12
    .annotation runtime Labcd/ey;
        method = 0x3cc114abac759880L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_1c

    const-wide v1, -0x43c549e370189650L  # -1.448026449367139E-18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->we(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1
    :cond_1c
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->U2:Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-virtual {v0, p3, p1}, Lcom/aide/codemodel/api/collections/ListOfInt;->gn(II)V

    .line 2
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v0

    iget-object v0, v0, Labcd/u1$b;->a8:Lcom/aide/codemodel/api/collections/ListOfInt;

    invoke-virtual {v0, p3, p2}, Lcom/aide/codemodel/api/collections/ListOfInt;->gn(II)V
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v0

    .line 3
    sget-boolean v1, Labcd/u1;->Ws:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0x43c549e370189650L  # -1.448026449367139E-18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/iy;->U2(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v0
.end method

.method public yO(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;ILcom/aide/codemodel/api/Type;[Lcom/aide/codemodel/api/Type;II[Lcom/aide/codemodel/api/Type;II)Lcom/aide/codemodel/api/Type;
    .registers 37
    .annotation runtime Labcd/ey;
        method = 0x356b57f5f9d5a59cL
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p3

    move/from16 v15, p6

    move/from16 v12, p7

    move/from16 v11, p9

    move/from16 v10, p10

    const/16 v16, 0x9

    const/16 v17, 0x8

    const/16 v18, 0x7

    const/16 v19, 0x6

    const/16 v20, 0x5

    const/16 v21, 0x4

    const/16 v22, 0x3

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v9, 0xa

    const-wide v7, 0x1d960ed673a5d1d4L  # 3.740655752826808E-166

    :try_start_27
    sget-boolean v0, Labcd/u1;->J8:Z
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_a2

    if-eqz v0, :cond_64

    :try_start_2b
    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v25

    aput-object p2, v0, v24

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v23

    aput-object p4, v0, v22

    aput-object p5, v0, v21

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v20

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v19

    aput-object p8, v0, v18

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v17

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v16

    invoke-static {v7, v8, v13, v0}, Labcd/iy;->QX(JLjava/lang/Object;[Ljava/lang/Object;)V
    :try_end_5d
    .catchall {:try_start_2b .. :try_end_5d} :catchall_5e

    goto :goto_64

    :catchall_5e
    move-exception v0

    move-object/from16 v1, p4

    :goto_61
    const/16 v15, 0xa

    goto :goto_a7

    .line 1
    :cond_64
    :goto_64
    :try_start_64
    invoke-virtual/range {p4 .. p4}, Lcom/aide/codemodel/api/Type;->Qq()Lcom/aide/codemodel/api/Type;

    move-result-object v6
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_a2

    .line 2
    :try_start_68
    invoke-virtual {v13, v6}, Labcd/u1;->hz(Lcom/aide/codemodel/api/Type;)I

    move-result v0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_9f

    if-eqz v0, :cond_95

    .line 3
    :try_start_6e
    iget-object v0, v13, Labcd/u1;->VH:Lcom/aide/codemodel/api/EntitySpace;

    iget-object v1, v0, Lcom/aide/codemodel/api/EntitySpace;->rN:Labcd/u1$c;
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_91

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p0

    move/from16 v5, p3

    move-object/from16 p4, v6

    move-object/from16 v7, p5

    move/from16 v8, p6

    const/16 v15, 0xa

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    :try_start_8a
    invoke-virtual/range {v1 .. v12}, Labcd/u1$c;->Hw(Lcom/aide/codemodel/api/FileEntry;Lcom/aide/codemodel/api/abstraction/Language;Labcd/u1;ILcom/aide/codemodel/api/Type;[Lcom/aide/codemodel/api/Type;II[Lcom/aide/codemodel/api/Type;II)Lcom/aide/codemodel/api/Type;

    move-result-object v0
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_8f

    return-object v0

    :catchall_8f
    move-exception v0

    goto :goto_a5

    :catchall_91
    move-exception v0

    move-object/from16 p4, v6

    goto :goto_a3

    :cond_95
    move-object v1, v6

    const/16 v15, 0xa

    .line 4
    :try_start_98
    invoke-virtual {v13, v14, v1}, Labcd/u1;->kQ(ILcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object v0
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_9d

    return-object v0

    :catchall_9d
    move-exception v0

    goto :goto_a7

    :catchall_9f
    move-exception v0

    move-object v1, v6

    goto :goto_61

    :catchall_a2
    move-exception v0

    :goto_a3
    const/16 v15, 0xa

    :goto_a5
    move-object/from16 v1, p4

    :goto_a7
    sget-boolean v2, Labcd/u1;->Ws:Z

    if-eqz v2, :cond_ea

    new-array v2, v15, [Ljava/lang/Object;

    aput-object p1, v2, v25

    aput-object p2, v2, v24

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v23

    aput-object v1, v2, v22

    aput-object p5, v2, v21

    new-instance v1, Ljava/lang/Integer;

    move/from16 v3, p6

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v2, v20

    new-instance v1, Ljava/lang/Integer;

    move/from16 v3, p7

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v2, v19

    aput-object p8, v2, v18

    new-instance v1, Ljava/lang/Integer;

    move/from16 v3, p9

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v2, v17

    new-instance v1, Ljava/lang/Integer;

    move/from16 v3, p10

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v2, v16

    const-wide v3, 0x1d960ed673a5d1d4L  # 3.740655752826808E-166

    invoke-static {v0, v3, v4, v13, v2}, Labcd/iy;->rN(Ljava/lang/Throwable;JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_ea
    goto :goto_ec

    :goto_eb
    throw v0

    :goto_ec
    goto :goto_eb
.end method

.method public yS()Z
    .registers 7
    .annotation runtime Labcd/ey;
        method = -0x20840ceeb4175e3fL
    .end annotation

    const-wide v0, -0x214be8adcc1e868bL  # -1.6056155200651096E148

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object v2

    invoke-virtual {v2}, Labcd/k1;->Yi()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    return v3

    .line 2
    :cond_18
    invoke-virtual {p0}, Labcd/u1;->cT()Z

    move-result v2

    if-eqz v2, :cond_1f

    return v3

    .line 3
    :cond_1f
    invoke-virtual {p0}, Labcd/n1;->ro()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_27

    return v4

    .line 4
    :cond_27
    invoke-virtual {p0}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object v2

    .line 5
    :goto_2b
    invoke-virtual {v2}, Labcd/k1;->T6()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 6
    invoke-virtual {v2}, Labcd/n1;->ro()Z

    move-result v5

    if-eqz v5, :cond_38

    return v4

    .line 7
    :cond_38
    invoke-virtual {v2}, Labcd/k1;->Hw()Labcd/k1;

    move-result-object v2
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3e

    goto :goto_2b

    :cond_3d
    return v3

    :catchall_3e
    move-exception v2

    .line 8
    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_46

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_46
    goto :goto_48

    :goto_47
    throw v2

    :goto_48
    goto :goto_47
.end method

.method public ye()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/ey;
        method = -0x28795f9912600b70L
    .end annotation

    const-wide v0, 0x2f4997ede39690c0L  # 6.745286631385677E-81

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-virtual {p0}, Labcd/u1;->q7()Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_14
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget-object v0, v2, Labcd/u1$b;->KD:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public ys()Z
    .registers 5
    .annotation runtime Labcd/ey;
        method = 0x1377dbedd41220d4L
    .end annotation

    const-wide v0, -0x27e3e77a221b9c94L  # -2.7675764897024002E116

    :try_start_5
    sget-boolean v2, Labcd/u1;->J8:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/iy;->gn(JLjava/lang/Object;)V

    .line 1
    :cond_c
    invoke-direct {p0}, Labcd/u1;->sG()Labcd/u1$b;

    move-result-object v2

    iget v0, v2, Labcd/u1$b;->BT:I
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1a

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/u1;->Ws:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/iy;->aM(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public zh(Lcom/aide/codemodel/api/Type;I)Lcom/aide/codemodel/api/Type;
    .registers 10
    .annotation runtime Labcd/ey;
        method = 0x1ddb133eb51ef21L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/u1;->J8:Z

    if-eqz v0, :cond_11

    const-wide v0, 0x9ab96a0d96d9e25L

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, p0, p1, v2}, Labcd/iy;->EQ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    if-nez p1, :cond_17

    .line 1
    invoke-virtual {p0}, Labcd/u1;->Hw()Labcd/k1;

    move-result-object p1

    .line 2
    :cond_17
    invoke-virtual {p0}, Labcd/u1;->oY()I

    move-result v0

    if-ge p2, v0, :cond_98

    .line 3
    invoke-virtual {p0, p2}, Labcd/u1;->qp(I)Lcom/aide/codemodel/api/Type;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Labcd/n1;->er()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 5
    move-object v1, p1

    check-cast v1, Labcd/k1;

    invoke-virtual {v1, p0}, Labcd/k1;->oy(Labcd/u1;)Lcom/aide/codemodel/api/Type;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {v1}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-eqz v2, :cond_45

    :cond_3a
    invoke-virtual {p0}, Labcd/u1;->gG()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-virtual {v0}, Lcom/aide/codemodel/api/Type;->x9()Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 7
    :cond_45
    invoke-virtual {v1}, Labcd/n1;->ei()Z

    move-result v2

    if-eqz v2, :cond_52

    check-cast v1, Labcd/a2;

    invoke-virtual {v1, v0}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    :cond_52
    return-object v0

    .line 8
    :cond_53
    move-object v1, p1

    check-cast v1, Labcd/a2;

    invoke-virtual {v1}, Labcd/a2;->ko()Labcd/k1;

    move-result-object v1

    invoke-virtual {v1, p0}, Labcd/k1;->oy(Labcd/u1;)Lcom/aide/codemodel/api/Type;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-virtual {v1}, Lcom/aide/codemodel/api/Type;->et()Z

    move-result v2

    if-eqz v2, :cond_7c

    :cond_6a
    invoke-virtual {p0}, Labcd/u1;->gG()Z

    move-result v2

    if-nez v2, :cond_7c

    move-object v1, p1

    check-cast v1, Labcd/a2;

    invoke-virtual {v0}, Lcom/aide/codemodel/api/Type;->x9()Lcom/aide/codemodel/api/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 10
    :cond_7c
    invoke-virtual {v1}, Labcd/n1;->ei()Z

    move-result v2

    if-nez v2, :cond_8a

    move-object v1, p1

    check-cast v1, Labcd/a2;

    invoke-virtual {v1, v0}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 11
    :cond_8a
    move-object v2, p1

    check-cast v2, Labcd/a2;

    check-cast v1, Labcd/a2;

    invoke-virtual {v1, v0}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/a2;->WB(Lcom/aide/codemodel/api/Type;)Lcom/aide/codemodel/api/Type;

    move-result-object p1

    return-object p1

    .line 12
    :cond_98
    new-instance v0, Labcd/e4;

    invoke-direct {v0}, Labcd/e4;-><init>()V

    throw v0
    :try_end_9e
    .catchall {:try_start_0 .. :try_end_9e} :catchall_9e

    :catchall_9e
    move-exception v0

    move-object v5, p1

    .line 13
    sget-boolean p1, Labcd/u1;->Ws:Z

    if-eqz p1, :cond_b3

    const-wide v2, 0x9ab96a0d96d9e25L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/iy;->Mr(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b3
    throw v0
.end method
