.class public final Lcom/avast/a/b/a/a$i$a;
.super Lcom/google/a/g$a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/g$a",
        "<",
        "Lcom/avast/a/b/a/a$i;",
        "Lcom/avast/a/b/a/a$i$a;",
        ">;",
        "Lcom/avast/a/b/a/a$j;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:J

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5494
    invoke-direct {p0}, Lcom/google/a/g$a;-><init>()V

    .line 5725
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->i:Ljava/lang/Object;

    .line 5829
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->j:Ljava/lang/Object;

    .line 5927
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->k:Ljava/lang/Object;

    .line 6074
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->b:Ljava/lang/Object;

    .line 6172
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->m:Ljava/lang/Object;

    .line 6270
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->c:Ljava/lang/Object;

    .line 6368
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->d:Ljava/lang/Object;

    .line 6466
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->n:Ljava/lang/Object;

    .line 6564
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->o:Ljava/lang/Object;

    .line 6662
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->e:Ljava/lang/Object;

    .line 6760
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->p:Ljava/lang/Object;

    .line 6858
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->f:Ljava/lang/Object;

    .line 6956
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->g:Ljava/lang/Object;

    .line 7054
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->h:Ljava/lang/Object;

    .line 5496
    return-void
.end method

.method static synthetic e()Lcom/avast/a/b/a/a$i$a;
    .locals 1

    .prologue
    .line 10501
    new-instance v0, Lcom/avast/a/b/a/a$i$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$i$a;-><init>()V

    .line 5489
    return-object v0
.end method

.method private f()Lcom/avast/a/b/a/a$i$a;
    .locals 2

    .prologue
    .line 7501
    new-instance v0, Lcom/avast/a/b/a/a$i$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$i$a;-><init>()V

    .line 5540
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$i$a;->a()Lcom/avast/a/b/a/a$i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/b/a/a$i$a;->a(Lcom/avast/a/b/a/a$i;)Lcom/avast/a/b/a/a$i$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/avast/a/b/a/a$i;)Lcom/avast/a/b/a/a$i$a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5624
    invoke-static {}, Lcom/avast/a/b/a/a$i;->a()Lcom/avast/a/b/a/a$i;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 5698
    :cond_0
    :goto_0
    return-object p0

    .line 8479
    :cond_1
    iget v2, p1, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_10

    move v2, v0

    .line 5625
    :goto_1
    if-eqz v2, :cond_2

    .line 5626
    iget v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5627
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->b(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i$a;->i:Ljava/lang/Object;

    .line 8536
    :cond_2
    iget v2, p1, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    move v2, v0

    .line 5630
    :goto_2
    if-eqz v2, :cond_3

    .line 5631
    iget v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5632
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->c(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i$a;->j:Ljava/lang/Object;

    .line 8591
    :cond_3
    iget v2, p1, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    move v2, v0

    .line 5635
    :goto_3
    if-eqz v2, :cond_4

    .line 5636
    iget v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5637
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->d(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i$a;->k:Ljava/lang/Object;

    .line 8646
    :cond_4
    iget v2, p1, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_13

    move v2, v0

    .line 5640
    :goto_4
    if-eqz v2, :cond_5

    .line 8656
    iget-wide v2, p1, Lcom/avast/a/b/a/a$i;->c:J

    .line 9054
    iget v4, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 9055
    iput-wide v2, p0, Lcom/avast/a/b/a/a$i$a;->l:J

    .line 9670
    :cond_5
    iget v2, p1, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_14

    move v2, v0

    .line 5643
    :goto_5
    if-eqz v2, :cond_6

    .line 5644
    iget v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5645
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->e(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i$a;->b:Ljava/lang/Object;

    .line 9725
    :cond_6
    iget v2, p1, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_15

    move v2, v0

    .line 5648
    :goto_6
    if-eqz v2, :cond_7

    .line 5649
    iget v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5650
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->f(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i$a;->m:Ljava/lang/Object;

    .line 9780
    :cond_7
    iget v2, p1, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_16

    move v2, v0

    .line 5653
    :goto_7
    if-eqz v2, :cond_8

    .line 5654
    iget v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5655
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->g(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i$a;->c:Ljava/lang/Object;

    .line 9835
    :cond_8
    iget v2, p1, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_17

    move v2, v0

    .line 5658
    :goto_8
    if-eqz v2, :cond_9

    .line 5659
    iget v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5660
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->h(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i$a;->d:Ljava/lang/Object;

    .line 9890
    :cond_9
    iget v2, p1, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_18

    move v2, v0

    .line 5663
    :goto_9
    if-eqz v2, :cond_a

    .line 5664
    iget v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5665
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->i(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i$a;->n:Ljava/lang/Object;

    .line 9945
    :cond_a
    iget v2, p1, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_19

    move v2, v0

    .line 5668
    :goto_a
    if-eqz v2, :cond_b

    .line 5669
    iget v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5670
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->j(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i$a;->o:Ljava/lang/Object;

    .line 10000
    :cond_b
    iget v2, p1, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_1a

    move v2, v0

    .line 5673
    :goto_b
    if-eqz v2, :cond_c

    .line 5674
    iget v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5675
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->k(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$i$a;->e:Ljava/lang/Object;

    .line 10055
    :cond_c
    iget v2, p1, Lcom/avast/a/b/a/a$i;->b:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_1b

    .line 5678
    :goto_c
    if-eqz v0, :cond_d

    .line 5679
    iget v0, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5680
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->l(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->p:Ljava/lang/Object;

    .line 5683
    :cond_d
    invoke-virtual {p1}, Lcom/avast/a/b/a/a$i;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5684
    iget v0, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5685
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->m(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->f:Ljava/lang/Object;

    .line 5688
    :cond_e
    invoke-virtual {p1}, Lcom/avast/a/b/a/a$i;->n()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5689
    iget v0, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5690
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->n(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->g:Ljava/lang/Object;

    .line 5693
    :cond_f
    invoke-virtual {p1}, Lcom/avast/a/b/a/a$i;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5694
    iget v0, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5695
    invoke-static {p1}, Lcom/avast/a/b/a/a$i;->o(Lcom/avast/a/b/a/a$i;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$i$a;->h:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_10
    move v2, v1

    .line 8479
    goto/16 :goto_1

    :cond_11
    move v2, v1

    .line 8536
    goto/16 :goto_2

    :cond_12
    move v2, v1

    .line 8591
    goto/16 :goto_3

    :cond_13
    move v2, v1

    .line 8646
    goto/16 :goto_4

    :cond_14
    move v2, v1

    .line 9670
    goto/16 :goto_5

    :cond_15
    move v2, v1

    .line 9725
    goto/16 :goto_6

    :cond_16
    move v2, v1

    .line 9780
    goto/16 :goto_7

    :cond_17
    move v2, v1

    .line 9835
    goto/16 :goto_8

    :cond_18
    move v2, v1

    .line 9890
    goto/16 :goto_9

    :cond_19
    move v2, v1

    .line 9945
    goto/16 :goto_a

    :cond_1a
    move v2, v1

    .line 10000
    goto :goto_b

    :cond_1b
    move v0, v1

    .line 10055
    goto :goto_c
.end method

.method public final a()Lcom/avast/a/b/a/a$i;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5556
    new-instance v2, Lcom/avast/a/b/a/a$i;

    invoke-direct {v2, v1}, Lcom/avast/a/b/a/a$i;-><init>(C)V

    .line 5557
    iget v3, p0, Lcom/avast/a/b/a/a$i$a;->a:I

    .line 5559
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_e

    .line 5562
    :goto_0
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->i:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->a(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5563
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 5564
    or-int/lit8 v0, v0, 0x2

    .line 5566
    :cond_0
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->j:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->b(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5567
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 5568
    or-int/lit8 v0, v0, 0x4

    .line 5570
    :cond_1
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->k:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->c(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5571
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 5572
    or-int/lit8 v0, v0, 0x8

    .line 5574
    :cond_2
    iget-wide v4, p0, Lcom/avast/a/b/a/a$i$a;->l:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/b/a/a$i;->a(Lcom/avast/a/b/a/a$i;J)J

    .line 5575
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 5576
    or-int/lit8 v0, v0, 0x10

    .line 5578
    :cond_3
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->d(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5579
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 5580
    or-int/lit8 v0, v0, 0x20

    .line 5582
    :cond_4
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->m:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->e(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5583
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 5584
    or-int/lit8 v0, v0, 0x40

    .line 5586
    :cond_5
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->f(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5587
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 5588
    or-int/lit16 v0, v0, 0x80

    .line 5590
    :cond_6
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->g(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5591
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 5592
    or-int/lit16 v0, v0, 0x100

    .line 5594
    :cond_7
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->n:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->h(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5595
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 5596
    or-int/lit16 v0, v0, 0x200

    .line 5598
    :cond_8
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->o:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->i(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5599
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 5600
    or-int/lit16 v0, v0, 0x400

    .line 5602
    :cond_9
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->j(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5603
    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    .line 5604
    or-int/lit16 v0, v0, 0x800

    .line 5606
    :cond_a
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->p:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->k(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5607
    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    .line 5608
    or-int/lit16 v0, v0, 0x1000

    .line 5610
    :cond_b
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->l(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5611
    and-int/lit16 v1, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_c

    .line 5612
    or-int/lit16 v0, v0, 0x2000

    .line 5614
    :cond_c
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->m(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5615
    and-int/lit16 v1, v3, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_d

    .line 5616
    or-int/lit16 v0, v0, 0x4000

    .line 5618
    :cond_d
    iget-object v1, p0, Lcom/avast/a/b/a/a$i$a;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$i;->n(Lcom/avast/a/b/a/a$i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5619
    invoke-static {v2, v0}, Lcom/avast/a/b/a/a$i;->a(Lcom/avast/a/b/a/a$i;I)I

    .line 5620
    return-object v2

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 5702
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic c()Lcom/google/a/g$a;
    .locals 1

    .prologue
    .line 5489
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i$a;->f()Lcom/avast/a/b/a/a$i$a;

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
    .line 5489
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i$a;->f()Lcom/avast/a/b/a/a$i$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 5489
    invoke-direct {p0}, Lcom/avast/a/b/a/a$i$a;->f()Lcom/avast/a/b/a/a$i$a;

    move-result-object v0

    return-object v0
.end method
