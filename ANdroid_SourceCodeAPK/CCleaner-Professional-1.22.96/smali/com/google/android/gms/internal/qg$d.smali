.class public final Lcom/google/android/gms/internal/qg$d;
.super Lcom/google/android/gms/internal/pw;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/qg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/pw",
        "<",
        "Lcom/google/android/gms/internal/qg$d;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Z

.field public h:[Lcom/google/android/gms/internal/qg$e;

.field public i:[B

.field public j:Lcom/google/android/gms/internal/qg$b;

.field public k:[B

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lcom/google/android/gms/internal/qg$a;

.field public o:Ljava/lang/String;

.field public p:J

.field public q:Lcom/google/android/gms/internal/qg$c;

.field public r:[B

.field public s:Ljava/lang/String;

.field public t:I

.field public u:[I

.field public v:J

.field public w:Lcom/google/android/gms/internal/qg$f;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/pw;-><init>()V

    .line 1000
    iput-wide v4, p0, Lcom/google/android/gms/internal/qg$d;->a:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/qg$d;->b:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/qg$d;->c:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/qg$d;->e:I

    iput v3, p0, Lcom/google/android/gms/internal/qg$d;->f:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/qg$d;->g:Z

    invoke-static {}, Lcom/google/android/gms/internal/qg$e;->b()[Lcom/google/android/gms/internal/qg$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    sget-object v0, Lcom/google/android/gms/internal/qf;->l:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->i:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    sget-object v0, Lcom/google/android/gms/internal/qf;->l:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->k:[B

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/google/android/gms/internal/qg$d;->p:J

    iput-object v2, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    sget-object v0, Lcom/google/android/gms/internal/qf;->l:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->r:[B

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/qg$d;->t:I

    sget-object v0, Lcom/google/android/gms/internal/qf;->e:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    iput-wide v4, p0, Lcom/google/android/gms/internal/qg$d;->v:J

    iput-object v2, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    iput-object v2, p0, Lcom/google/android/gms/internal/qg$d;->ag:Lcom/google/android/gms/internal/py;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/qg$d;->ah:I

    .line 0
    return-void
.end method

.method private b()Lcom/google/android/gms/internal/qg$d;
    .locals 4

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/pw;->c()Lcom/google/android/gms/internal/pw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qg$d;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/qg$e;

    iput-object v1, v0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    array-length v1, v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qg$e;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/qg$e;

    aput-object v1, v3, v2

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qg$b;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/qg$b;

    iput-object v1, v0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qg$a;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/qg$a;

    iput-object v1, v0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qg$c;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/qg$c;

    iput-object v1, v0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    array-length v1, v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/qg$d;->u:[I

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qg$f;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/qg$f;

    iput-object v1, v0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    :cond_6
    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 8

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 0
    invoke-super {p0}, Lcom/google/android/gms/internal/pw;->a()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->a:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/internal/qg$d;->a:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/pv;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->i:[B

    sget-object v3, Lcom/google/android/gms/internal/qf;->l:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->i:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->k:[B

    sget-object v3, Lcom/google/android/gms/internal/qf;->l:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->k:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    if-eqz v2, :cond_9

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/qg$d;->g:Z

    if-eqz v2, :cond_a

    const/16 v2, 0xa

    .line 4000
    invoke-static {v2}, Lcom/google/android/gms/internal/pv;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 0
    add-int/2addr v0, v2

    :cond_a
    iget v2, p0, Lcom/google/android/gms/internal/qg$d;->e:I

    if-eqz v2, :cond_b

    const/16 v2, 0xb

    iget v3, p0, Lcom/google/android/gms/internal/qg$d;->e:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    iget v2, p0, Lcom/google/android/gms/internal/qg$d;->f:I

    if-eqz v2, :cond_c

    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/gms/internal/qg$d;->f:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_e
    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->p:J

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->p:J

    .line 5000
    const/16 v4, 0xf

    invoke-static {v4}, Lcom/google/android/gms/internal/pv;->b(I)I

    move-result v4

    .line 6000
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->c(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(J)I

    move-result v2

    .line 5000
    add-int/2addr v2, v4

    .line 0
    add-int/2addr v0, v2

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    if-eqz v2, :cond_10

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_10
    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->b:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_11

    const/16 v2, 0x11

    iget-wide v4, p0, Lcom/google/android/gms/internal/qg$d;->b:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/pv;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->r:[B

    sget-object v3, Lcom/google/android/gms/internal/qf;->l:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->r:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_12
    iget v2, p0, Lcom/google/android/gms/internal/qg$d;->t:I

    if-eqz v2, :cond_13

    const/16 v2, 0x13

    iget v3, p0, Lcom/google/android/gms/internal/qg$d;->t:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    array-length v2, v2

    if-lez v2, :cond_15

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    array-length v3, v3

    if-ge v1, v3, :cond_14

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/pv;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_14
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_15
    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->c:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_16

    const/16 v1, 0x15

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->c:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/pv;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->v:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_17

    const/16 v1, 0x16

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->v:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/pv;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    if-eqz v1, :cond_18

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pv;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/pu;)Lcom/google/android/gms/internal/qc;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    .line 7000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/pw;->a(Lcom/google/android/gms/internal/pu;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    .line 8000
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->f()J

    move-result-wide v2

    .line 7000
    iput-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->a:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qf;->a(Lcom/google/android/gms/internal/pu;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/qg$e;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/qg$e;

    invoke-direct {v3}, Lcom/google/android/gms/internal/qg$e;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/qg$e;

    invoke-direct {v3}, Lcom/google/android/gms/internal/qg$e;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->i:[B

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->k:[B

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/qg$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qg$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/qg$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qg$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qg$d;->g:Z

    goto/16 :goto_0

    .line 9000
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->e()I

    move-result v0

    .line 7000
    iput v0, p0, Lcom/google/android/gms/internal/qg$d;->e:I

    goto/16 :goto_0

    .line 10000
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->e()I

    move-result v0

    .line 7000
    iput v0, p0, Lcom/google/android/gms/internal/qg$d;->f:I

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    goto/16 :goto_0

    .line 11000
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->f()J

    move-result-wide v2

    .line 12000
    const/4 v0, 0x1

    ushr-long v4, v2, v0

    const-wide/16 v6, 0x1

    and-long/2addr v2, v6

    neg-long v2, v2

    xor-long/2addr v2, v4

    .line 7000
    iput-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->p:J

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/qg$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qg$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    goto/16 :goto_0

    .line 13000
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->f()J

    move-result-wide v2

    .line 7000
    iput-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->b:J

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->r:[B

    goto/16 :goto_0

    .line 14000
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->e()I

    move-result v0

    .line 7000
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/qg$d;->t:I

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qf;->a(Lcom/google/android/gms/internal/pu;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 15000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->e()I

    move-result v3

    .line 7000
    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    array-length v0, v0

    goto :goto_3

    .line 16000
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->e()I

    move-result v3

    .line 7000
    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->c(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->j()I

    move-result v2

    move v0, v1

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->i()I

    move-result v4

    if-lez v4, :cond_a

    .line 17000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->e()I

    .line 7000
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/pu;->e(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    if-nez v2, :cond_c

    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_b

    iget-object v4, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_d

    .line 18000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->e()I

    move-result v4

    .line 7000
    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    array-length v2, v2

    goto :goto_6

    :cond_d
    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/pu;->d(I)V

    goto/16 :goto_0

    .line 19000
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->f()J

    move-result-wide v2

    .line 7000
    iput-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->c:J

    goto/16 :goto_0

    .line 20000
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->f()J

    move-result-wide v2

    .line 7000
    iput-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->v:J

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/qg$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qg$f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x50 -> :sswitch_9
        0x58 -> :sswitch_a
        0x60 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x78 -> :sswitch_e
        0x82 -> :sswitch_f
        0x88 -> :sswitch_10
        0x92 -> :sswitch_11
        0x98 -> :sswitch_12
        0xa0 -> :sswitch_13
        0xa2 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb0 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/pv;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 0
    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->a:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/pv;->b(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->i:[B

    sget-object v2, Lcom/google/android/gms/internal/qf;->l:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->i:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->k:[B

    sget-object v2, Lcom/google/android/gms/internal/qf;->l:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->k:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(I[B)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/qg$d;->g:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/qg$d;->g:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(IZ)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/qg$d;->e:I

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/qg$d;->e:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(II)V

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/qg$d;->f:I

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/qg$d;->f:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(II)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(ILjava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(ILjava/lang/String;)V

    :cond_d
    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->p:J

    const-wide/32 v4, 0x2bf20

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->p:J

    .line 2000
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pv;->c(II)V

    .line 3000
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->c(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/pv;->a(J)V

    .line 0
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_f
    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->b:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/pv;->b(IJ)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->r:[B

    sget-object v2, Lcom/google/android/gms/internal/qf;->l:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->r:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(I[B)V

    :cond_11
    iget v0, p0, Lcom/google/android/gms/internal/qg$d;->t:I

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    iget v2, p0, Lcom/google/android/gms/internal/qg$d;->t:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(II)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    array-length v0, v0

    if-lez v0, :cond_13

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    array-length v0, v0

    if-ge v1, v0, :cond_13

    const/16 v0, 0x14

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_13
    iget-wide v0, p0, Lcom/google/android/gms/internal/qg$d;->c:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_14

    const/16 v0, 0x15

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/pv;->b(IJ)V

    :cond_14
    iget-wide v0, p0, Lcom/google/android/gms/internal/qg$d;->v:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_15

    const/16 v0, 0x16

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->v:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/pv;->b(IJ)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    if-eqz v0, :cond_16

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pv;->a(ILjava/lang/String;)V

    :cond_17
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/pw;->a(Lcom/google/android/gms/internal/pv;)V

    return-void
.end method

.method public final synthetic c()Lcom/google/android/gms/internal/pw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/qg$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qg$d;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/qg$d;->b()Lcom/google/android/gms/internal/qg$d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/android/gms/internal/qc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/qg$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qg$d;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/qg$d;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/qg$d;

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/qg$d;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/qg$d;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/qg$d;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/google/android/gms/internal/qg$d;->e:I

    iget v3, p1, Lcom/google/android/gms/internal/qg$d;->e:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/google/android/gms/internal/qg$d;->f:I

    iget v3, p1, Lcom/google/android/gms/internal/qg$d;->f:I

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/qg$d;->g:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/qg$d;->g:Z

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/qa;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->i:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->i:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    if-eqz v2, :cond_e

    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/qg$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->k:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->k:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, p1, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    if-eqz v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    if-nez v2, :cond_12

    iget-object v2, p1, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    if-eqz v2, :cond_13

    move v0, v1

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    move v0, v1

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    if-nez v2, :cond_14

    iget-object v2, p1, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    if-eqz v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/qg$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    if-nez v2, :cond_16

    iget-object v2, p1, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    if-eqz v2, :cond_17

    move v0, v1

    goto/16 :goto_0

    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->p:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/qg$d;->p:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    if-nez v2, :cond_19

    iget-object v2, p1, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    if-eqz v2, :cond_1a

    move v0, v1

    goto/16 :goto_0

    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/qg$c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->r:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->r:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1b

    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    if-nez v2, :cond_1c

    iget-object v2, p1, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    if-eqz v2, :cond_1d

    move v0, v1

    goto/16 :goto_0

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    move v0, v1

    goto/16 :goto_0

    :cond_1d
    iget v2, p0, Lcom/google/android/gms/internal/qg$d;->t:I

    iget v3, p1, Lcom/google/android/gms/internal/qg$d;->t:I

    if-eq v2, v3, :cond_1e

    move v0, v1

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->u:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/qa;->a([I[I)Z

    move-result v2

    if-nez v2, :cond_1f

    move v0, v1

    goto/16 :goto_0

    :cond_1f
    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->v:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/qg$d;->v:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_20

    move v0, v1

    goto/16 :goto_0

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    if-eqz v2, :cond_22

    move v0, v1

    goto/16 :goto_0

    :cond_21
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    iget-object v3, p1, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/qg$f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    move v0, v1

    goto/16 :goto_0

    :cond_22
    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    iget-object v2, p1, Lcom/google/android/gms/internal/qg$d;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/qg$d;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->ag:Lcom/google/android/gms/internal/py;

    iget-object v1, p1, Lcom/google/android/gms/internal/qg$d;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/py;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->a:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/qg$d;->a:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->b:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/qg$d;->b:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->c:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/qg$d;->c:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/qg$d;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/qg$d;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/qg$d;->g:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->h:[Lcom/google/android/gms/internal/qg$e;

    invoke-static {v2}, Lcom/google/android/gms/internal/qa;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->i:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->k:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->p:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/qg$d;->p:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->r:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/qg$d;->t:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->u:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/qa;->a([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/qg$d;->v:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/qg$d;->v:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    if-nez v0, :cond_a

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/qg$d;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_0
    :goto_a
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x4d5

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->j:Lcom/google/android/gms/internal/qg$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qg$b;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->n:Lcom/google/android/gms/internal/qg$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qg$a;->hashCode()I

    move-result v0

    goto/16 :goto_5

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->q:Lcom/google/android/gms/internal/qg$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qg$c;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/qg$d;->w:Lcom/google/android/gms/internal/qg$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qg$f;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/qg$d;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/py;->hashCode()I

    move-result v1

    goto :goto_a
.end method
