.class public final Lcom/avast/a/b/a/a$o$a;
.super Lcom/google/a/g$a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a$o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/g$a",
        "<",
        "Lcom/avast/a/b/a/a$o;",
        "Lcom/avast/a/b/a/a$o$a;",
        ">;",
        "Lcom/avast/a/b/a/a$p;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/avast/a/b/a/a$i;

.field public d:Lcom/avast/a/b/a/a$m;

.field public e:Lcom/avast/a/b/a/a$a;

.field private f:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1280
    invoke-direct {p0}, Lcom/google/a/g$a;-><init>()V

    .line 1451
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    .line 1623
    invoke-static {}, Lcom/avast/a/b/a/a$i;->a()Lcom/avast/a/b/a/a$i;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o$a;->c:Lcom/avast/a/b/a/a$i;

    .line 1708
    invoke-static {}, Lcom/avast/a/b/a/a$m;->a()Lcom/avast/a/b/a/a$m;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o$a;->d:Lcom/avast/a/b/a/a$m;

    .line 1793
    invoke-static {}, Lcom/avast/a/b/a/a$a;->a()Lcom/avast/a/b/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o$a;->e:Lcom/avast/a/b/a/a$a;

    .line 1282
    return-void
.end method

.method static synthetic f()Lcom/avast/a/b/a/a$o$a;
    .locals 1

    .prologue
    .line 6287
    new-instance v0, Lcom/avast/a/b/a/a$o$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$o$a;-><init>()V

    .line 1275
    return-object v0
.end method

.method private g()Lcom/avast/a/b/a/a$o$a;
    .locals 2

    .prologue
    .line 2287
    new-instance v0, Lcom/avast/a/b/a/a$o$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$o$a;-><init>()V

    .line 1306
    invoke-direct {p0}, Lcom/avast/a/b/a/a$o$a;->h()Lcom/avast/a/b/a/a$o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/b/a/a$o$a;->a(Lcom/avast/a/b/a/a$o;)Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/avast/a/b/a/a$o;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1322
    new-instance v2, Lcom/avast/a/b/a/a$o;

    invoke-direct {v2, v1}, Lcom/avast/a/b/a/a$o;-><init>(C)V

    .line 1323
    iget v3, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    .line 1325
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    .line 1328
    :goto_0
    iget v1, p0, Lcom/avast/a/b/a/a$o$a;->f:I

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$o;->a(Lcom/avast/a/b/a/a$o;I)I

    .line 1329
    iget v1, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    .line 1331
    iget v1, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    .line 1333
    :cond_0
    iget-object v1, p0, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$o;->a(Lcom/avast/a/b/a/a$o;Ljava/util/List;)Ljava/util/List;

    .line 1334
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 1335
    or-int/lit8 v0, v0, 0x2

    .line 1337
    :cond_1
    iget-object v1, p0, Lcom/avast/a/b/a/a$o$a;->c:Lcom/avast/a/b/a/a$i;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$o;->a(Lcom/avast/a/b/a/a$o;Lcom/avast/a/b/a/a$i;)Lcom/avast/a/b/a/a$i;

    .line 1338
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 1339
    or-int/lit8 v0, v0, 0x4

    .line 1341
    :cond_2
    iget-object v1, p0, Lcom/avast/a/b/a/a$o$a;->d:Lcom/avast/a/b/a/a$m;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$o;->a(Lcom/avast/a/b/a/a$o;Lcom/avast/a/b/a/a$m;)Lcom/avast/a/b/a/a$m;

    .line 1342
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 1343
    or-int/lit8 v0, v0, 0x8

    .line 1345
    :cond_3
    iget-object v1, p0, Lcom/avast/a/b/a/a$o$a;->e:Lcom/avast/a/b/a/a$a;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$o;->a(Lcom/avast/a/b/a/a$o;Lcom/avast/a/b/a/a$a;)Lcom/avast/a/b/a/a$a;

    .line 1346
    invoke-static {v2, v0}, Lcom/avast/a/b/a/a$o;->b(Lcom/avast/a/b/a/a$o;I)I

    .line 1347
    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 1453
    iget v0, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1454
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    .line 1455
    iget v0, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    .line 1457
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/avast/a/b/a/a$o$a;
    .locals 1

    .prologue
    .line 1430
    iget v0, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    .line 1431
    iput p1, p0, Lcom/avast/a/b/a/a$o$a;->f:I

    .line 1433
    return-object p0
.end method

.method public final a(Lcom/avast/a/b/a/a$g;)Lcom/avast/a/b/a/a$o$a;
    .locals 1

    .prologue
    .line 1528
    if-nez p1, :cond_0

    .line 1529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1531
    :cond_0
    invoke-direct {p0}, Lcom/avast/a/b/a/a$o$a;->i()V

    .line 1532
    iget-object v0, p0, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1534
    return-object p0
.end method

.method public final a(Lcom/avast/a/b/a/a$o;)Lcom/avast/a/b/a/a$o$a;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1351
    invoke-static {}, Lcom/avast/a/b/a/a$o;->a()Lcom/avast/a/b/a/a$o;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 1374
    :cond_0
    :goto_0
    return-object p0

    .line 2993
    :cond_1
    iget v2, p1, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_6

    move v2, v0

    .line 1352
    :goto_1
    if-eqz v2, :cond_2

    .line 3003
    iget v2, p1, Lcom/avast/a/b/a/a$o;->c:I

    .line 1353
    invoke-virtual {p0, v2}, Lcom/avast/a/b/a/a$o$a;->a(I)Lcom/avast/a/b/a/a$o$a;

    .line 1355
    :cond_2
    invoke-static {p1}, Lcom/avast/a/b/a/a$o;->a(Lcom/avast/a/b/a/a$o;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1356
    iget-object v2, p0, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1357
    invoke-static {p1}, Lcom/avast/a/b/a/a$o;->a(Lcom/avast/a/b/a/a$o;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    .line 1358
    iget v2, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    .line 3073
    :cond_3
    :goto_2
    iget v2, p1, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    move v2, v0

    .line 1365
    :goto_3
    if-eqz v2, :cond_4

    .line 3083
    iget-object v2, p1, Lcom/avast/a/b/a/a$o;->e:Lcom/avast/a/b/a/a$i;

    .line 3682
    iget v3, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v5, :cond_9

    iget-object v3, p0, Lcom/avast/a/b/a/a$o$a;->c:Lcom/avast/a/b/a/a$i;

    .line 3683
    invoke-static {}, Lcom/avast/a/b/a/a$i;->a()Lcom/avast/a/b/a/a$i;

    move-result-object v4

    if-eq v3, v4, :cond_9

    .line 3684
    iget-object v3, p0, Lcom/avast/a/b/a/a$o$a;->c:Lcom/avast/a/b/a/a$i;

    .line 3685
    invoke-static {v3}, Lcom/avast/a/b/a/a$i;->a(Lcom/avast/a/b/a/a$i;)Lcom/avast/a/b/a/a$i$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/avast/a/b/a/a$i$a;->a(Lcom/avast/a/b/a/a$i;)Lcom/avast/a/b/a/a$i$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/a/b/a/a$i$a;->a()Lcom/avast/a/b/a/a$i;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$o$a;->c:Lcom/avast/a/b/a/a$i;

    .line 3690
    :goto_4
    iget v2, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    .line 4097
    :cond_4
    iget v2, p1, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_a

    move v2, v0

    .line 1368
    :goto_5
    if-eqz v2, :cond_5

    .line 4107
    iget-object v2, p1, Lcom/avast/a/b/a/a$o;->f:Lcom/avast/a/b/a/a$m;

    .line 4767
    iget v3, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v6, :cond_b

    iget-object v3, p0, Lcom/avast/a/b/a/a$o$a;->d:Lcom/avast/a/b/a/a$m;

    .line 4768
    invoke-static {}, Lcom/avast/a/b/a/a$m;->a()Lcom/avast/a/b/a/a$m;

    move-result-object v4

    if-eq v3, v4, :cond_b

    .line 4769
    iget-object v3, p0, Lcom/avast/a/b/a/a$o$a;->d:Lcom/avast/a/b/a/a$m;

    .line 4770
    invoke-static {v3}, Lcom/avast/a/b/a/a$m;->a(Lcom/avast/a/b/a/a$m;)Lcom/avast/a/b/a/a$m$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/avast/a/b/a/a$m$a;->a(Lcom/avast/a/b/a/a$m;)Lcom/avast/a/b/a/a$m$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/a/b/a/a$m$a;->a()Lcom/avast/a/b/a/a$m;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$o$a;->d:Lcom/avast/a/b/a/a$m;

    .line 4775
    :goto_6
    iget v2, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    .line 5121
    :cond_5
    iget v2, p1, Lcom/avast/a/b/a/a$o;->b:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_c

    .line 1371
    :goto_7
    if-eqz v0, :cond_0

    .line 5131
    iget-object v0, p1, Lcom/avast/a/b/a/a$o;->g:Lcom/avast/a/b/a/a$a;

    .line 5852
    iget v1, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/avast/a/b/a/a$o$a;->e:Lcom/avast/a/b/a/a$a;

    .line 5853
    invoke-static {}, Lcom/avast/a/b/a/a$a;->a()Lcom/avast/a/b/a/a$a;

    move-result-object v2

    if-eq v1, v2, :cond_d

    .line 5854
    iget-object v1, p0, Lcom/avast/a/b/a/a$o$a;->e:Lcom/avast/a/b/a/a$a;

    .line 5855
    invoke-static {v1}, Lcom/avast/a/b/a/a$a;->a(Lcom/avast/a/b/a/a$a;)Lcom/avast/a/b/a/a$a$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/a/b/a/a$a$a;->a(Lcom/avast/a/b/a/a$a;)Lcom/avast/a/b/a/a$a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$a$a;->e()Lcom/avast/a/b/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o$a;->e:Lcom/avast/a/b/a/a$a;

    .line 5860
    :goto_8
    iget v0, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    goto/16 :goto_0

    :cond_6
    move v2, v1

    .line 2993
    goto/16 :goto_1

    .line 1360
    :cond_7
    invoke-direct {p0}, Lcom/avast/a/b/a/a$o$a;->i()V

    .line 1361
    iget-object v2, p0, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/a/b/a/a$o;->a(Lcom/avast/a/b/a/a$o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_8
    move v2, v1

    .line 3073
    goto/16 :goto_3

    .line 3687
    :cond_9
    iput-object v2, p0, Lcom/avast/a/b/a/a$o$a;->c:Lcom/avast/a/b/a/a$i;

    goto :goto_4

    :cond_a
    move v2, v1

    .line 4097
    goto :goto_5

    .line 4772
    :cond_b
    iput-object v2, p0, Lcom/avast/a/b/a/a$o$a;->d:Lcom/avast/a/b/a/a$m;

    goto :goto_6

    :cond_c
    move v0, v1

    .line 5121
    goto :goto_7

    .line 5857
    :cond_d
    iput-object v0, p0, Lcom/avast/a/b/a/a$o$a;->e:Lcom/avast/a/b/a/a$a;

    goto :goto_8
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/avast/a/b/a/a$o$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/avast/a/b/a/a$g;",
            ">;)",
            "Lcom/avast/a/b/a/a$o$a;"
        }
    .end annotation

    .prologue
    .line 1590
    invoke-direct {p0}, Lcom/avast/a/b/a/a$o$a;->i()V

    .line 1591
    iget-object v0, p0, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/a/g$a;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1593
    return-object p0
.end method

.method public final a()Lcom/avast/a/b/a/a$o;
    .locals 2

    .prologue
    .line 1314
    invoke-direct {p0}, Lcom/avast/a/b/a/a$o$a;->h()Lcom/avast/a/b/a/a$o;

    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$o;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2306
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    .line 1316
    throw v0

    .line 1318
    :cond_0
    return-object v0
.end method

.method public final b(I)Lcom/avast/a/b/a/a$o$a;
    .locals 1

    .prologue
    .line 1616
    invoke-direct {p0}, Lcom/avast/a/b/a/a$o$a;->i()V

    .line 1617
    iget-object v0, p0, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1619
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 1378
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic c()Lcom/google/a/g$a;
    .locals 1

    .prologue
    .line 1275
    invoke-direct {p0}, Lcom/avast/a/b/a/a$o$a;->g()Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1275
    invoke-direct {p0}, Lcom/avast/a/b/a/a$o$a;->g()Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 1275
    invoke-direct {p0}, Lcom/avast/a/b/a/a$o$a;->g()Lcom/avast/a/b/a/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/avast/a/b/a/a$o$a;
    .locals 1

    .prologue
    .line 1603
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$o$a;->b:Ljava/util/List;

    .line 1604
    iget v0, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avast/a/b/a/a$o$a;->a:I

    .line 1606
    return-object p0
.end method
