.class final Lcom/google/android/exoplayer2/c/b/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/c/b/d;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/c/b/d;)V
    .locals 0

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/b/d$a;->a:Lcom/google/android/exoplayer2/c/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/c/b/d;B)V
    .locals 0

    .prologue
    .line 1254
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c/b/d$a;-><init>(Lcom/google/android/exoplayer2/c/b/d;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 1258
    invoke-static {p1}, Lcom/google/android/exoplayer2/c/b/d;->a(I)I

    move-result v0

    return v0
.end method

.method public final a(ID)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d$a;->a:Lcom/google/android/exoplayer2/c/b/d;

    .line 7687
    sparse-switch p1, :sswitch_data_0

    .line 7690
    :goto_0
    return-void

    .line 7689
    :sswitch_0
    double-to-long v2, p2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/b/d;->i:J

    goto :goto_0

    .line 7692
    :sswitch_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    double-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->s:I

    goto :goto_0

    .line 7687
    :sswitch_data_0
    .sparse-switch
        0xb5 -> :sswitch_1
        0x4489 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(IILcom/google/android/exoplayer2/c/g;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1295
    iget-object v9, p0, Lcom/google/android/exoplayer2/c/b/d$a;->a:Lcom/google/android/exoplayer2/c/b/d;

    .line 8720
    sparse-switch p1, :sswitch_data_0

    .line 8878
    new-instance v0, Lcom/google/android/exoplayer2/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8722
    :sswitch_0
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->e:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 8723
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->e:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    rsub-int/lit8 v1, p2, 0x4

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 8724
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->e:Lcom/google/android/exoplayer2/j/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 8725
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->e:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v9, Lcom/google/android/exoplayer2/c/b/d;->m:I

    .line 8876
    :goto_0
    return-void

    .line 8728
    :sswitch_1
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    new-array v1, p2, [B

    iput-object v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->h:[B

    .line 8729
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/b/d$b;->h:[B

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    goto :goto_0

    .line 8732
    :sswitch_2
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    new-array v1, p2, [B

    iput-object v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->o:[B

    .line 8733
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/b/d$b;->o:[B

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    goto :goto_0

    .line 8737
    :sswitch_3
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    new-array v1, p2, [B

    iput-object v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->f:[B

    .line 8738
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/b/d$b;->f:[B

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    goto :goto_0

    .line 8741
    :sswitch_4
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    new-array v1, p2, [B

    iput-object v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->g:[B

    .line 8742
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/b/d$b;->g:[B

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    goto :goto_0

    .line 8751
    :sswitch_5
    iget v0, v9, Lcom/google/android/exoplayer2/c/b/d;->u:I

    if-nez v0, :cond_0

    .line 8752
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->b:Lcom/google/android/exoplayer2/c/b/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/google/android/exoplayer2/c/b/f;->a(Lcom/google/android/exoplayer2/c/g;ZZI)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v9, Lcom/google/android/exoplayer2/c/b/d;->A:I

    .line 8753
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->b:Lcom/google/android/exoplayer2/c/b/f;

    .line 9114
    iget v0, v0, Lcom/google/android/exoplayer2/c/b/f;->a:I

    .line 8753
    iput v0, v9, Lcom/google/android/exoplayer2/c/b/d;->B:I

    .line 8754
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v9, Lcom/google/android/exoplayer2/c/b/d;->w:J

    .line 8755
    const/4 v0, 0x1

    iput v0, v9, Lcom/google/android/exoplayer2/c/b/d;->u:I

    .line 8756
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->a()V

    .line 8759
    :cond_0
    iget-object v0, v9, Lcom/google/android/exoplayer2/c/b/d;->c:Landroid/util/SparseArray;

    iget v1, v9, Lcom/google/android/exoplayer2/c/b/d;->A:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/b/d$b;

    .line 8762
    if-nez v0, :cond_1

    .line 8763
    iget v0, v9, Lcom/google/android/exoplayer2/c/b/d;->B:I

    sub-int v0, p2, v0

    invoke-interface {p3, v0}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 8764
    const/4 v0, 0x0

    iput v0, v9, Lcom/google/android/exoplayer2/c/b/d;->u:I

    goto :goto_0

    .line 8768
    :cond_1
    iget v1, v9, Lcom/google/android/exoplayer2/c/b/d;->u:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 8770
    const/4 v1, 0x3

    invoke-virtual {v9, p3, v1}, Lcom/google/android/exoplayer2/c/b/d;->a(Lcom/google/android/exoplayer2/c/g;I)V

    .line 8771
    iget-object v1, v9, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x6

    shr-int/lit8 v1, v1, 0x1

    .line 8772
    if-nez v1, :cond_4

    .line 8773
    const/4 v1, 0x1

    iput v1, v9, Lcom/google/android/exoplayer2/c/b/d;->y:I

    .line 8774
    iget-object v1, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/c/b/d;->a([II)[I

    move-result-object v1

    iput-object v1, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    .line 8775
    iget-object v1, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    const/4 v2, 0x0

    iget v3, v9, Lcom/google/android/exoplayer2/c/b/d;->B:I

    sub-int v3, p2, v3

    add-int/lit8 v3, v3, -0x3

    aput v3, v1, v2

    .line 8849
    :goto_1
    iget-object v1, v9, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, v9, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 8850
    iget-wide v2, v9, Lcom/google/android/exoplayer2/c/b/d;->q:J

    int-to-long v4, v1

    invoke-virtual {v9, v4, v5}, Lcom/google/android/exoplayer2/c/b/d;->a(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v9, Lcom/google/android/exoplayer2/c/b/d;->v:J

    .line 8851
    iget-object v1, v9, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    .line 8852
    :goto_2
    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->c:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/16 v2, 0xa3

    if-ne p1, v2, :cond_14

    iget-object v2, v9, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_14

    :cond_2
    const/4 v2, 0x1

    .line 8854
    :goto_3
    if-eqz v2, :cond_15

    const/4 v2, 0x1

    :goto_4
    if-eqz v1, :cond_16

    const/high16 v1, -0x80000000

    :goto_5
    or-int/2addr v1, v2

    iput v1, v9, Lcom/google/android/exoplayer2/c/b/d;->C:I

    .line 8856
    const/4 v1, 0x2

    iput v1, v9, Lcom/google/android/exoplayer2/c/b/d;->u:I

    .line 8857
    const/4 v1, 0x0

    iput v1, v9, Lcom/google/android/exoplayer2/c/b/d;->x:I

    .line 8860
    :cond_3
    const/16 v1, 0xa3

    if-ne p1, v1, :cond_18

    .line 8862
    :goto_6
    iget v1, v9, Lcom/google/android/exoplayer2/c/b/d;->x:I

    iget v2, v9, Lcom/google/android/exoplayer2/c/b/d;->y:I

    if-ge v1, v2, :cond_17

    .line 8863
    iget-object v1, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    iget v2, v9, Lcom/google/android/exoplayer2/c/b/d;->x:I

    aget v1, v1, v2

    invoke-virtual {v9, p3, v0, v1}, Lcom/google/android/exoplayer2/c/b/d;->a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/b/d$b;I)V

    .line 8864
    iget-wide v2, v9, Lcom/google/android/exoplayer2/c/b/d;->v:J

    iget v1, v9, Lcom/google/android/exoplayer2/c/b/d;->x:I

    iget v4, v0, Lcom/google/android/exoplayer2/c/b/d$b;->d:I

    mul-int/2addr v1, v4

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 8866
    invoke-virtual {v9, v0, v2, v3}, Lcom/google/android/exoplayer2/c/b/d;->a(Lcom/google/android/exoplayer2/c/b/d$b;J)V

    .line 8867
    iget v1, v9, Lcom/google/android/exoplayer2/c/b/d;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/google/android/exoplayer2/c/b/d;->x:I

    goto :goto_6

    .line 8777
    :cond_4
    const/16 v2, 0xa3

    if-eq p1, v2, :cond_5

    .line 8778
    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Lacing only supported in SimpleBlocks."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8782
    :cond_5
    const/4 v2, 0x4

    invoke-virtual {v9, p3, v2}, Lcom/google/android/exoplayer2/c/b/d;->a(Lcom/google/android/exoplayer2/c/g;I)V

    .line 8783
    iget-object v2, v9, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/google/android/exoplayer2/c/b/d;->y:I

    .line 8784
    iget-object v2, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    iget v3, v9, Lcom/google/android/exoplayer2/c/b/d;->y:I

    .line 8785
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/c/b/d;->a([II)[I

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    .line 8786
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 8787
    iget v1, v9, Lcom/google/android/exoplayer2/c/b/d;->B:I

    sub-int v1, p2, v1

    add-int/lit8 v1, v1, -0x4

    iget v2, v9, Lcom/google/android/exoplayer2/c/b/d;->y:I

    div-int/2addr v1, v2

    .line 8789
    iget-object v2, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    const/4 v3, 0x0

    iget v4, v9, Lcom/google/android/exoplayer2/c/b/d;->y:I

    invoke-static {v2, v3, v4, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_1

    .line 8790
    :cond_6
    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 8791
    const/4 v1, 0x0

    .line 8792
    const/4 v3, 0x4

    .line 8793
    const/4 v2, 0x0

    :goto_7
    iget v4, v9, Lcom/google/android/exoplayer2/c/b/d;->y:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_8

    .line 8794
    iget-object v4, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    const/4 v5, 0x0

    aput v5, v4, v2

    .line 8797
    :cond_7
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, p3, v3}, Lcom/google/android/exoplayer2/c/b/d;->a(Lcom/google/android/exoplayer2/c/g;I)V

    .line 8798
    iget-object v4, v9, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v4, v4, Lcom/google/android/exoplayer2/j/k;->a:[B

    add-int/lit8 v5, v3, -0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 8799
    iget-object v5, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    aget v6, v5, v2

    add-int/2addr v6, v4

    aput v6, v5, v2

    .line 8800
    const/16 v5, 0xff

    if-eq v4, v5, :cond_7

    .line 8801
    iget-object v4, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    aget v4, v4, v2

    add-int/2addr v1, v4

    .line 8793
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 8803
    :cond_8
    iget-object v2, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    iget v4, v9, Lcom/google/android/exoplayer2/c/b/d;->y:I

    add-int/lit8 v4, v4, -0x1

    iget v5, v9, Lcom/google/android/exoplayer2/c/b/d;->B:I

    sub-int v5, p2, v5

    sub-int v3, v5, v3

    sub-int v1, v3, v1

    aput v1, v2, v4

    goto/16 :goto_1

    .line 8805
    :cond_9
    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    .line 8806
    const/4 v1, 0x0

    .line 8807
    const/4 v3, 0x4

    .line 8808
    const/4 v2, 0x0

    :goto_8
    iget v4, v9, Lcom/google/android/exoplayer2/c/b/d;->y:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_11

    .line 8809
    iget-object v4, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    const/4 v5, 0x0

    aput v5, v4, v2

    .line 8810
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, p3, v3}, Lcom/google/android/exoplayer2/c/b/d;->a(Lcom/google/android/exoplayer2/c/g;I)V

    .line 8811
    iget-object v4, v9, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v4, v4, Lcom/google/android/exoplayer2/j/k;->a:[B

    add-int/lit8 v5, v3, -0x1

    aget-byte v4, v4, v5

    if-nez v4, :cond_a

    .line 8812
    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8814
    :cond_a
    const-wide/16 v4, 0x0

    .line 8815
    const/4 v6, 0x0

    move v8, v6

    :goto_9
    const/16 v6, 0x8

    if-ge v8, v6, :cond_c

    .line 8816
    const/4 v6, 0x1

    rsub-int/lit8 v7, v8, 0x7

    shl-int v7, v6, v7

    .line 8817
    iget-object v6, v9, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v6, v6, Lcom/google/android/exoplayer2/j/k;->a:[B

    add-int/lit8 v10, v3, -0x1

    aget-byte v6, v6, v10

    and-int/2addr v6, v7

    if-eqz v6, :cond_e

    .line 8818
    add-int/lit8 v4, v3, -0x1

    .line 8819
    add-int/2addr v3, v8

    .line 8820
    invoke-virtual {v9, p3, v3}, Lcom/google/android/exoplayer2/c/b/d;->a(Lcom/google/android/exoplayer2/c/g;I)V

    .line 8821
    iget-object v5, v9, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v5, v5, Lcom/google/android/exoplayer2/j/k;->a:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    xor-int/lit8 v5, v7, -0x1

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 8822
    :goto_a
    if-ge v6, v3, :cond_b

    .line 8823
    const/16 v7, 0x8

    shl-long/2addr v4, v7

    .line 8824
    iget-object v7, v9, Lcom/google/android/exoplayer2/c/b/d;->d:Lcom/google/android/exoplayer2/j/k;

    iget-object v10, v7, Lcom/google/android/exoplayer2/j/k;->a:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v10, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v10, v6

    or-long/2addr v4, v10

    move v6, v7

    goto :goto_a

    .line 8827
    :cond_b
    if-lez v2, :cond_c

    .line 8828
    const-wide/16 v6, 0x1

    mul-int/lit8 v8, v8, 0x7

    add-int/lit8 v8, v8, 0x6

    shl-long/2addr v6, v8

    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    sub-long/2addr v4, v6

    .line 8833
    :cond_c
    const-wide/32 v6, -0x80000000

    cmp-long v6, v4, v6

    if-ltz v6, :cond_d

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-lez v6, :cond_f

    .line 8834
    :cond_d
    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "EBML lacing sample size out of range."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8815
    :cond_e
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_9

    .line 8836
    :cond_f
    long-to-int v4, v4

    .line 8837
    iget-object v5, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    if-nez v2, :cond_10

    :goto_b
    aput v4, v5, v2

    .line 8839
    iget-object v4, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    aget v4, v4, v2

    add-int/2addr v1, v4

    .line 8808
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 8837
    :cond_10
    iget-object v6, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    add-int/2addr v4, v6

    goto :goto_b

    .line 8841
    :cond_11
    iget-object v2, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    iget v4, v9, Lcom/google/android/exoplayer2/c/b/d;->y:I

    add-int/lit8 v4, v4, -0x1

    iget v5, v9, Lcom/google/android/exoplayer2/c/b/d;->B:I

    sub-int v5, p2, v5

    sub-int v3, v5, v3

    sub-int v1, v3, v1

    aput v1, v2, v4

    goto/16 :goto_1

    .line 8845
    :cond_12
    new-instance v0, Lcom/google/android/exoplayer2/j;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected lacing value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8851
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 8852
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 8854
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_16
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 8869
    :cond_17
    const/4 v0, 0x0

    iput v0, v9, Lcom/google/android/exoplayer2/c/b/d;->u:I

    goto/16 :goto_0

    .line 8873
    :cond_18
    iget-object v1, v9, Lcom/google/android/exoplayer2/c/b/d;->z:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v9, p3, v0, v1}, Lcom/google/android/exoplayer2/c/b/d;->a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/b/d$b;I)V

    goto/16 :goto_0

    .line 8720
    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_5
        0xa3 -> :sswitch_5
        0x4255 -> :sswitch_3
        0x47e2 -> :sswitch_4
        0x53ab -> :sswitch_0
        0x63a2 -> :sswitch_1
        0x7672 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const-wide/16 v4, 0x1

    .line 1279
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/b/d$a;->a:Lcom/google/android/exoplayer2/c/b/d;

    .line 7551
    sparse-switch p1, :sswitch_data_0

    .line 7673
    :cond_0
    :goto_0
    return-void

    .line 7554
    :sswitch_0
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    .line 7555
    new-instance v0, Lcom/google/android/exoplayer2/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "EBMLReadVersion "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7560
    :sswitch_1
    cmp-long v0, p2, v4

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 7561
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DocTypeReadVersion "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7567
    :sswitch_2
    iget-wide v0, v2, Lcom/google/android/exoplayer2/c/b/d;->g:J

    add-long/2addr v0, p2

    iput-wide v0, v2, Lcom/google/android/exoplayer2/c/b/d;->n:J

    goto :goto_0

    .line 7570
    :sswitch_3
    iput-wide p2, v2, Lcom/google/android/exoplayer2/c/b/d;->h:J

    goto :goto_0

    .line 7573
    :sswitch_4
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->j:I

    goto :goto_0

    .line 7576
    :sswitch_5
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->k:I

    goto :goto_0

    .line 7579
    :sswitch_6
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->l:I

    goto :goto_0

    .line 7582
    :sswitch_7
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->m:I

    goto :goto_0

    .line 7585
    :sswitch_8
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->n:I

    goto :goto_0

    .line 7588
    :sswitch_9
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->b:I

    goto :goto_0

    .line 7591
    :sswitch_a
    iget-object v2, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    cmp-long v3, p2, v4

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v0, v2, Lcom/google/android/exoplayer2/c/b/d$b;->v:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 7594
    :sswitch_b
    iget-object v2, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    cmp-long v3, p2, v4

    if-nez v3, :cond_3

    :goto_2
    iput-boolean v0, v2, Lcom/google/android/exoplayer2/c/b/d$b;->w:Z

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 7597
    :sswitch_c
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->c:I

    goto/16 :goto_0

    .line 7600
    :sswitch_d
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->d:I

    goto/16 :goto_0

    .line 7603
    :sswitch_e
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iput-wide p2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->t:J

    goto/16 :goto_0

    .line 7606
    :sswitch_f
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iput-wide p2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->u:J

    goto/16 :goto_0

    .line 7609
    :sswitch_10
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->q:I

    goto/16 :goto_0

    .line 7612
    :sswitch_11
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->r:I

    goto/16 :goto_0

    .line 7615
    :sswitch_12
    iput-boolean v0, v2, Lcom/google/android/exoplayer2/c/b/d;->D:Z

    goto/16 :goto_0

    .line 7619
    :sswitch_13
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 7620
    new-instance v0, Lcom/google/android/exoplayer2/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ContentEncodingOrder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7625
    :sswitch_14
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    .line 7626
    new-instance v0, Lcom/google/android/exoplayer2/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ContentEncodingScope "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7631
    :sswitch_15
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 7632
    new-instance v0, Lcom/google/android/exoplayer2/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ContentCompAlgo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7637
    :sswitch_16
    const-wide/16 v0, 0x5

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 7638
    new-instance v0, Lcom/google/android/exoplayer2/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ContentEncAlgo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7643
    :sswitch_17
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    .line 7644
    new-instance v0, Lcom/google/android/exoplayer2/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AESSettingsCipherMode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7648
    :sswitch_18
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->r:Lcom/google/android/exoplayer2/j/f;

    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplayer2/c/b/d;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/j/f;->a(J)V

    goto/16 :goto_0

    .line 7651
    :sswitch_19
    iget-boolean v1, v2, Lcom/google/android/exoplayer2/c/b/d;->t:Z

    if-nez v1, :cond_0

    .line 7655
    iget-object v1, v2, Lcom/google/android/exoplayer2/c/b/d;->s:Lcom/google/android/exoplayer2/j/f;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/exoplayer2/j/f;->a(J)V

    .line 7656
    iput-boolean v0, v2, Lcom/google/android/exoplayer2/c/b/d;->t:Z

    goto/16 :goto_0

    .line 7660
    :sswitch_1a
    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplayer2/c/b/d;->a(J)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/google/android/exoplayer2/c/b/d;->q:J

    goto/16 :goto_0

    .line 7663
    :sswitch_1b
    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplayer2/c/b/d;->a(J)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/google/android/exoplayer2/c/b/d;->w:J

    goto/16 :goto_0

    .line 7666
    :sswitch_1c
    long-to-int v3, p2

    .line 7667
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 7669
    :pswitch_1
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->p:I

    goto/16 :goto_0

    .line 7672
    :pswitch_2
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d$b;->p:I

    goto/16 :goto_0

    .line 7675
    :pswitch_3
    iget-object v1, v2, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iput v0, v1, Lcom/google/android/exoplayer2/c/b/d$b;->p:I

    goto/16 :goto_0

    .line 7551
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_c
        0x88 -> :sswitch_a
        0x9b -> :sswitch_1b
        0x9f -> :sswitch_10
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_18
        0xba -> :sswitch_5
        0xd7 -> :sswitch_9
        0xe7 -> :sswitch_1a
        0xf1 -> :sswitch_19
        0xfb -> :sswitch_12
        0x4254 -> :sswitch_15
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_0
        0x47e1 -> :sswitch_16
        0x47e8 -> :sswitch_17
        0x5031 -> :sswitch_13
        0x5032 -> :sswitch_14
        0x53ac -> :sswitch_2
        0x53b8 -> :sswitch_1c
        0x54b0 -> :sswitch_6
        0x54b2 -> :sswitch_8
        0x54ba -> :sswitch_7
        0x55aa -> :sswitch_b
        0x56aa -> :sswitch_e
        0x56bb -> :sswitch_f
        0x6264 -> :sswitch_11
        0x23e383 -> :sswitch_d
        0x2ad7b1 -> :sswitch_3
    .end sparse-switch

    .line 7667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(IJJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1269
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d$a;->a:Lcom/google/android/exoplayer2/c/b/d;

    .line 2426
    sparse-switch p1, :sswitch_data_0

    .line 2468
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2428
    :sswitch_1
    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/b/d;->g:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/b/d;->g:J

    cmp-long v1, v2, p2

    if-eqz v1, :cond_1

    .line 2430
    new-instance v0, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v1, "Multiple Segment elements not supported"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2432
    :cond_1
    iput-wide p2, v0, Lcom/google/android/exoplayer2/c/b/d;->g:J

    .line 2433
    iput-wide p4, v0, Lcom/google/android/exoplayer2/c/b/d;->f:J

    goto :goto_0

    .line 2436
    :sswitch_2
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/exoplayer2/c/b/d;->m:I

    .line 2437
    iput-wide v4, v0, Lcom/google/android/exoplayer2/c/b/d;->n:J

    goto :goto_0

    .line 2440
    :sswitch_3
    new-instance v1, Lcom/google/android/exoplayer2/j/f;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/j/f;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/c/b/d;->r:Lcom/google/android/exoplayer2/j/f;

    .line 2441
    new-instance v1, Lcom/google/android/exoplayer2/j/f;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/j/f;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/c/b/d;->s:Lcom/google/android/exoplayer2/j/f;

    goto :goto_0

    .line 2444
    :sswitch_4
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/c/b/d;->t:Z

    goto :goto_0

    .line 2447
    :sswitch_5
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/c/b/d;->l:Z

    if-nez v1, :cond_0

    .line 2449
    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/b/d;->p:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 2451
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/c/b/d;->o:Z

    goto :goto_0

    .line 2455
    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/c/b/d;->E:Lcom/google/android/exoplayer2/c/h;

    new-instance v2, Lcom/google/android/exoplayer2/c/m$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/b/d;->j:J

    invoke-direct {v2, v4, v5}, Lcom/google/android/exoplayer2/c/m$a;-><init>(J)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/c/h;->a(Lcom/google/android/exoplayer2/c/m;)V

    .line 2456
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/c/b/d;->l:Z

    goto :goto_0

    .line 2461
    :sswitch_6
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/c/b/d;->D:Z

    goto :goto_0

    .line 2467
    :sswitch_7
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iput-boolean v6, v0, Lcom/google/android/exoplayer2/c/b/d$b;->e:Z

    goto :goto_0

    .line 2470
    :sswitch_8
    new-instance v1, Lcom/google/android/exoplayer2/c/b/d$b;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/c/b/d$b;-><init>(B)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    goto :goto_0

    .line 2426
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_6
        0xae -> :sswitch_8
        0xbb -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5035 -> :sswitch_7
        0x6240 -> :sswitch_0
        0x18538067 -> :sswitch_1
        0x1c53bb6b -> :sswitch_3
        0x1f43b675 -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/b/d$a;->a:Lcom/google/android/exoplayer2/c/b/d;

    .line 7700
    sparse-switch p1, :sswitch_data_0

    .line 7709
    :cond_0
    :goto_0
    return-void

    .line 7703
    :sswitch_0
    const-string/jumbo v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7704
    new-instance v0, Lcom/google/android/exoplayer2/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DocType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7708
    :sswitch_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iput-object p2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->a:Ljava/lang/String;

    goto :goto_0

    .line 7711
    :sswitch_2
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    .line 8300
    iput-object p2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->x:Ljava/lang/String;

    goto :goto_0

    .line 7700
    nop

    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_1
        0x4282 -> :sswitch_0
        0x22b59c -> :sswitch_2
    .end sparse-switch
.end method

.method public final b(I)Z
    .locals 1

    .prologue
    .line 1263
    invoke-static {p1}, Lcom/google/android/exoplayer2/c/b/d;->b(I)Z

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/b/d$a;->a:Lcom/google/android/exoplayer2/c/b/d;

    move-object/from16 v21, v0

    .line 2478
    sparse-switch p1, :sswitch_data_0

    .line 2538
    :cond_0
    :goto_0
    return-void

    .line 2480
    :sswitch_0
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/b/d;->h:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 2482
    const-wide/32 v2, 0xf4240

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/b/d;->h:J

    .line 2484
    :cond_1
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/b/d;->i:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2485
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/b/d;->i:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/c/b/d;->a(J)J

    move-result-wide v2

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/b/d;->j:J

    goto :goto_0

    .line 2489
    :sswitch_1
    move-object/from16 v0, v21

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d;->m:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/b/d;->n:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 2490
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2492
    :cond_3
    move-object/from16 v0, v21

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d;->m:I

    const v3, 0x1c53bb6b

    if-ne v2, v3, :cond_0

    .line 2493
    move-object/from16 v0, v21

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/b/d;->n:J

    move-object/from16 v0, v21

    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/b/d;->p:J

    goto :goto_0

    .line 2497
    :sswitch_2
    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/c/b/d;->l:Z

    if-nez v2, :cond_0

    .line 2498
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/b/d;->E:Lcom/google/android/exoplayer2/c/h;

    .line 3145
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/b/d;->g:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/b/d;->j:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->r:Lcom/google/android/exoplayer2/j/f;

    if-eqz v2, :cond_4

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->r:Lcom/google/android/exoplayer2/j/f;

    .line 4072
    iget v2, v2, Lcom/google/android/exoplayer2/j/f;->a:I

    .line 3146
    if-eqz v2, :cond_4

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->s:Lcom/google/android/exoplayer2/j/f;

    if-eqz v2, :cond_4

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->s:Lcom/google/android/exoplayer2/j/f;

    .line 5072
    iget v2, v2, Lcom/google/android/exoplayer2/j/f;->a:I

    .line 3147
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/b/d;->r:Lcom/google/android/exoplayer2/j/f;

    .line 6072
    iget v4, v4, Lcom/google/android/exoplayer2/j/f;->a:I

    .line 3147
    if-eq v2, v4, :cond_5

    .line 3149
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->r:Lcom/google/android/exoplayer2/j/f;

    .line 3150
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->s:Lcom/google/android/exoplayer2/j/f;

    .line 3151
    new-instance v2, Lcom/google/android/exoplayer2/c/m$a;

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/b/d;->j:J

    invoke-direct {v2, v4, v5}, Lcom/google/android/exoplayer2/c/m$a;-><init>(J)V

    .line 2498
    :goto_1
    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/c/h;->a(Lcom/google/android/exoplayer2/c/m;)V

    .line 2499
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/c/b/d;->l:Z

    goto/16 :goto_0

    .line 3153
    :cond_5
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->r:Lcom/google/android/exoplayer2/j/f;

    .line 7072
    iget v4, v2, Lcom/google/android/exoplayer2/j/f;->a:I

    .line 3154
    new-array v5, v4, [I

    .line 3155
    new-array v6, v4, [J

    .line 3156
    new-array v7, v4, [J

    .line 3157
    new-array v8, v4, [J

    .line 3158
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_6

    .line 3159
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/google/android/exoplayer2/c/b/d;->r:Lcom/google/android/exoplayer2/j/f;

    invoke-virtual {v9, v2}, Lcom/google/android/exoplayer2/j/f;->a(I)J

    move-result-wide v10

    aput-wide v10, v8, v2

    .line 3160
    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/google/android/exoplayer2/c/b/d;->g:J

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/google/android/exoplayer2/c/b/d;->s:Lcom/google/android/exoplayer2/j/f;

    invoke-virtual {v9, v2}, Lcom/google/android/exoplayer2/j/f;->a(I)J

    move-result-wide v12

    add-long/2addr v10, v12

    aput-wide v10, v6, v2

    .line 3158
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3162
    :cond_6
    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v9, v4, -0x1

    if-ge v2, v9, :cond_7

    .line 3163
    add-int/lit8 v9, v2, 0x1

    aget-wide v10, v6, v9

    aget-wide v12, v6, v2

    sub-long/2addr v10, v12

    long-to-int v9, v10

    aput v9, v5, v2

    .line 3164
    add-int/lit8 v9, v2, 0x1

    aget-wide v10, v8, v9

    aget-wide v12, v8, v2

    sub-long/2addr v10, v12

    aput-wide v10, v7, v2

    .line 3162
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3166
    :cond_7
    add-int/lit8 v2, v4, -0x1

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/google/android/exoplayer2/c/b/d;->g:J

    move-object/from16 v0, v21

    iget-wide v12, v0, Lcom/google/android/exoplayer2/c/b/d;->f:J

    add-long/2addr v10, v12

    add-int/lit8 v9, v4, -0x1

    aget-wide v12, v6, v9

    sub-long/2addr v10, v12

    long-to-int v9, v10

    aput v9, v5, v2

    .line 3168
    add-int/lit8 v2, v4, -0x1

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/google/android/exoplayer2/c/b/d;->j:J

    add-int/lit8 v4, v4, -0x1

    aget-wide v12, v8, v4

    sub-long/2addr v10, v12

    aput-wide v10, v7, v2

    .line 3169
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->r:Lcom/google/android/exoplayer2/j/f;

    .line 3170
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->s:Lcom/google/android/exoplayer2/j/f;

    .line 3171
    new-instance v2, Lcom/google/android/exoplayer2/c/a;

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/c/a;-><init>([I[J[J[J)V

    goto/16 :goto_1

    .line 2505
    :sswitch_3
    move-object/from16 v0, v21

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d;->u:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2510
    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/c/b/d;->D:Z

    if-nez v2, :cond_8

    .line 2511
    move-object/from16 v0, v21

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d;->C:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Lcom/google/android/exoplayer2/c/b/d;->C:I

    .line 2513
    :cond_8
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->c:Landroid/util/SparseArray;

    move-object/from16 v0, v21

    iget v3, v0, Lcom/google/android/exoplayer2/c/b/d;->A:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/c/b/d$b;

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/b/d;->v:J

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4, v5}, Lcom/google/android/exoplayer2/c/b/d;->a(Lcom/google/android/exoplayer2/c/b/d$b;J)V

    .line 2514
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Lcom/google/android/exoplayer2/c/b/d;->u:I

    goto/16 :goto_0

    .line 2517
    :sswitch_4
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/c/b/d$b;->e:Z

    if-eqz v2, :cond_0

    .line 2518
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/b/d$b;->g:[B

    if-nez v2, :cond_9

    .line 2519
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2521
    :cond_9
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v7, Lcom/google/android/exoplayer2/b;->b:Ljava/util/UUID;

    const-string/jumbo v8, "video/webm"

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iget-object v9, v9, Lcom/google/android/exoplayer2/c/b/d$b;->g:[B

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    iput-object v3, v2, Lcom/google/android/exoplayer2/c/b/d$b;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto/16 :goto_0

    .line 2526
    :sswitch_5
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/c/b/d$b;->e:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/b/d$b;->f:[B

    if-eqz v2, :cond_0

    .line 2527
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Combining encryption and compression is not supported"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2531
    :sswitch_6
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->c:Landroid/util/SparseArray;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iget v3, v3, Lcom/google/android/exoplayer2/c/b/d$b;->b:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/b/d$b;->a:Ljava/lang/String;

    .line 7208
    const-string/jumbo v3, "V_VP8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "V_VP9"

    .line 7209
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "V_MPEG2"

    .line 7210
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "V_MPEG4/ISO/SP"

    .line 7211
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "V_MPEG4/ISO/ASP"

    .line 7212
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "V_MPEG4/ISO/AP"

    .line 7213
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "V_MPEG4/ISO/AVC"

    .line 7214
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "V_MPEGH/ISO/HEVC"

    .line 7215
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "V_MS/VFW/FOURCC"

    .line 7216
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "V_THEORA"

    .line 7217
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "A_OPUS"

    .line 7218
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "A_VORBIS"

    .line 7219
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "A_AAC"

    .line 7220
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "A_MPEG/L3"

    .line 7221
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "A_AC3"

    .line 7222
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "A_EAC3"

    .line 7223
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "A_TRUEHD"

    .line 7224
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "A_DTS"

    .line 7225
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "A_DTS/EXPRESS"

    .line 7226
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "A_DTS/LOSSLESS"

    .line 7227
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "A_FLAC"

    .line 7228
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "A_MS/ACM"

    .line 7229
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "A_PCM/INT/LIT"

    .line 7230
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "S_TEXT/UTF8"

    .line 7231
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "S_VOBSUB"

    .line 7232
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "S_HDMV/PGS"

    .line 7233
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    const/4 v2, 0x1

    .line 2531
    :goto_4
    if-eqz v2, :cond_e

    .line 2532
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/b/d;->E:Lcom/google/android/exoplayer2/c/h;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iget v4, v2, Lcom/google/android/exoplayer2/c/b/d$b;->b:I

    .line 7346
    const/4 v5, -0x1

    .line 7347
    const/4 v8, -0x1

    .line 7348
    const/4 v9, 0x0

    .line 7349
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/b/d$b;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :cond_b
    :goto_5
    packed-switch v2, :pswitch_data_0

    .line 7458
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Unrecognized codec identifier."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7233
    :cond_c
    const/4 v2, 0x0

    goto :goto_4

    .line 7349
    :sswitch_7
    const-string/jumbo v6, "V_VP8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x0

    goto :goto_5

    :sswitch_8
    const-string/jumbo v6, "V_VP9"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x1

    goto :goto_5

    :sswitch_9
    const-string/jumbo v6, "V_MPEG2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x2

    goto :goto_5

    :sswitch_a
    const-string/jumbo v6, "V_MPEG4/ISO/SP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x3

    goto :goto_5

    :sswitch_b
    const-string/jumbo v6, "V_MPEG4/ISO/ASP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x4

    goto :goto_5

    :sswitch_c
    const-string/jumbo v6, "V_MPEG4/ISO/AP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x5

    goto :goto_5

    :sswitch_d
    const-string/jumbo v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x6

    goto :goto_5

    :sswitch_e
    const-string/jumbo v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x7

    goto :goto_5

    :sswitch_f
    const-string/jumbo v6, "V_MS/VFW/FOURCC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0x8

    goto :goto_5

    :sswitch_10
    const-string/jumbo v6, "V_THEORA"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0x9

    goto :goto_5

    :sswitch_11
    const-string/jumbo v6, "A_VORBIS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0xa

    goto/16 :goto_5

    :sswitch_12
    const-string/jumbo v6, "A_OPUS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0xb

    goto/16 :goto_5

    :sswitch_13
    const-string/jumbo v6, "A_AAC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0xc

    goto/16 :goto_5

    :sswitch_14
    const-string/jumbo v6, "A_MPEG/L3"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0xd

    goto/16 :goto_5

    :sswitch_15
    const-string/jumbo v6, "A_AC3"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0xe

    goto/16 :goto_5

    :sswitch_16
    const-string/jumbo v6, "A_EAC3"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0xf

    goto/16 :goto_5

    :sswitch_17
    const-string/jumbo v6, "A_TRUEHD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0x10

    goto/16 :goto_5

    :sswitch_18
    const-string/jumbo v6, "A_DTS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0x11

    goto/16 :goto_5

    :sswitch_19
    const-string/jumbo v6, "A_DTS/EXPRESS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0x12

    goto/16 :goto_5

    :sswitch_1a
    const-string/jumbo v6, "A_DTS/LOSSLESS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0x13

    goto/16 :goto_5

    :sswitch_1b
    const-string/jumbo v6, "A_FLAC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0x14

    goto/16 :goto_5

    :sswitch_1c
    const-string/jumbo v6, "A_MS/ACM"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0x15

    goto/16 :goto_5

    :sswitch_1d
    const-string/jumbo v6, "A_PCM/INT/LIT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0x16

    goto/16 :goto_5

    :sswitch_1e
    const-string/jumbo v6, "S_TEXT/UTF8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0x17

    goto/16 :goto_5

    :sswitch_1f
    const-string/jumbo v6, "S_VOBSUB"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0x18

    goto/16 :goto_5

    :sswitch_20
    const-string/jumbo v6, "S_HDMV/PGS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v2, 0x19

    goto/16 :goto_5

    .line 7351
    :pswitch_0
    const-string/jumbo v3, "video/x-vnd.on2.vp8"

    .line 7463
    :cond_d
    :goto_6
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->w:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_7
    or-int/lit8 v6, v2, 0x0

    .line 7464
    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->v:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    :goto_8
    or-int v11, v6, v2

    .line 7467
    invoke-static {v3}, Lcom/google/android/exoplayer2/j/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 7468
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    move-object/from16 v0, v22

    iget v6, v0, Lcom/google/android/exoplayer2/c/b/d$b;->q:I

    move-object/from16 v0, v22

    iget v7, v0, Lcom/google/android/exoplayer2/c/b/d$b;->s:I

    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/google/android/exoplayer2/c/b/d$b;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/google/android/exoplayer2/c/b/d$b;->x:Ljava/lang/String;

    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 7494
    :goto_9
    move-object/from16 v0, v22

    iget v3, v0, Lcom/google/android/exoplayer2/c/b/d$b;->b:I

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/google/android/exoplayer2/c/b/d$b;->y:Lcom/google/android/exoplayer2/c/o;

    .line 7495
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/b/d$b;->y:Lcom/google/android/exoplayer2/c/o;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 2533
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->c:Landroid/util/SparseArray;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    iget v3, v3, Lcom/google/android/exoplayer2/c/b/d$b;->b:I

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2537
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->k:Lcom/google/android/exoplayer2/c/b/d$b;

    goto/16 :goto_0

    .line 7354
    :pswitch_1
    const-string/jumbo v3, "video/x-vnd.on2.vp9"

    goto :goto_6

    .line 7357
    :pswitch_2
    const-string/jumbo v3, "video/mpeg2"

    goto :goto_6

    .line 7362
    :pswitch_3
    const-string/jumbo v3, "video/mp4v-es"

    .line 7363
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->h:[B

    if-nez v2, :cond_f

    const/4 v2, 0x0

    :goto_a
    move-object v9, v2

    .line 7365
    goto :goto_6

    .line 7363
    :cond_f
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->h:[B

    .line 7364
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_a

    .line 7367
    :pswitch_4
    const-string/jumbo v3, "video/avc"

    .line 7368
    new-instance v2, Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/b/d$b;->h:[B

    invoke-direct {v2, v6}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/k/a;->a(Lcom/google/android/exoplayer2/j/k;)Lcom/google/android/exoplayer2/k/a;

    move-result-object v2

    .line 7369
    iget-object v9, v2, Lcom/google/android/exoplayer2/k/a;->a:Ljava/util/List;

    .line 7370
    iget v2, v2, Lcom/google/android/exoplayer2/k/a;->b:I

    move-object/from16 v0, v22

    iput v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->z:I

    goto/16 :goto_6

    .line 7373
    :pswitch_5
    const-string/jumbo v3, "video/hevc"

    .line 7374
    new-instance v2, Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/b/d$b;->h:[B

    invoke-direct {v2, v6}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/k/b;->a(Lcom/google/android/exoplayer2/j/k;)Lcom/google/android/exoplayer2/k/b;

    move-result-object v2

    .line 7375
    iget-object v9, v2, Lcom/google/android/exoplayer2/k/b;->a:Ljava/util/List;

    .line 7376
    iget v2, v2, Lcom/google/android/exoplayer2/k/b;->b:I

    move-object/from16 v0, v22

    iput v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->z:I

    goto/16 :goto_6

    .line 7379
    :pswitch_6
    new-instance v2, Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/b/d$b;->h:[B

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/c/b/d$b;->a(Lcom/google/android/exoplayer2/j/k;)Ljava/util/List;

    move-result-object v9

    .line 7380
    if-nez v9, :cond_10

    const-string/jumbo v2, "video/x-unknown"

    :goto_b
    move-object v3, v2

    .line 7381
    goto/16 :goto_6

    .line 7380
    :cond_10
    const-string/jumbo v2, "video/wvc1"

    goto :goto_b

    .line 7385
    :pswitch_7
    const-string/jumbo v3, "video/x-unknown"

    goto/16 :goto_6

    .line 7388
    :pswitch_8
    const-string/jumbo v3, "audio/vorbis"

    .line 7389
    const/16 v5, 0x2000

    .line 7390
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->h:[B

    invoke-static {v2}, Lcom/google/android/exoplayer2/c/b/d$b;->a([B)Ljava/util/List;

    move-result-object v9

    goto/16 :goto_6

    .line 7393
    :pswitch_9
    const-string/jumbo v3, "audio/opus"

    .line 7394
    const/16 v5, 0x1680

    .line 7395
    new-instance v9, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7396
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->h:[B

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7397
    const/16 v2, 0x8

    .line 7398
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/google/android/exoplayer2/c/b/d$b;->t:J

    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 7397
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7399
    const/16 v2, 0x8

    .line 7400
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/google/android/exoplayer2/c/b/d$b;->u:J

    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 7399
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 7403
    :pswitch_a
    const-string/jumbo v3, "audio/mp4a-latm"

    .line 7404
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->h:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    goto/16 :goto_6

    .line 7407
    :pswitch_b
    const-string/jumbo v3, "audio/mpeg"

    .line 7408
    const/16 v5, 0x1000

    .line 7409
    goto/16 :goto_6

    .line 7411
    :pswitch_c
    const-string/jumbo v3, "audio/ac3"

    goto/16 :goto_6

    .line 7414
    :pswitch_d
    const-string/jumbo v3, "audio/eac3"

    goto/16 :goto_6

    .line 7417
    :pswitch_e
    const-string/jumbo v3, "audio/true-hd"

    goto/16 :goto_6

    .line 7421
    :pswitch_f
    const-string/jumbo v3, "audio/vnd.dts"

    goto/16 :goto_6

    .line 7424
    :pswitch_10
    const-string/jumbo v3, "audio/vnd.dts.hd"

    goto/16 :goto_6

    .line 7427
    :pswitch_11
    const-string/jumbo v3, "audio/x-flac"

    .line 7428
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->h:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    goto/16 :goto_6

    .line 7431
    :pswitch_12
    const-string/jumbo v3, "audio/raw"

    .line 7432
    new-instance v2, Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/b/d$b;->h:[B

    invoke-direct {v2, v6}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/c/b/d$b;->b(Lcom/google/android/exoplayer2/j/k;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 7433
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Non-PCM MS/ACM is unsupported"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7435
    :cond_11
    move-object/from16 v0, v22

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->r:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/j/r;->a(I)I

    move-result v8

    .line 7436
    if-nez v8, :cond_d

    .line 7437
    new-instance v2, Lcom/google/android/exoplayer2/j;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unsupported PCM bit depth: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/exoplayer2/c/b/d$b;->r:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7441
    :pswitch_13
    const-string/jumbo v3, "audio/raw"

    .line 7442
    move-object/from16 v0, v22

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->r:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/j/r;->a(I)I

    move-result v8

    .line 7443
    if-nez v8, :cond_d

    .line 7444
    new-instance v2, Lcom/google/android/exoplayer2/j;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unsupported PCM bit depth: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/exoplayer2/c/b/d$b;->r:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7448
    :pswitch_14
    const-string/jumbo v3, "application/x-subrip"

    goto/16 :goto_6

    .line 7451
    :pswitch_15
    const-string/jumbo v3, "application/vobsub"

    .line 7452
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->h:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    goto/16 :goto_6

    .line 7455
    :pswitch_16
    const-string/jumbo v3, "application/pgs"

    goto/16 :goto_6

    .line 7463
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 7464
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 7471
    :cond_14
    invoke-static {v3}, Lcom/google/android/exoplayer2/j/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 7472
    move-object/from16 v0, v22

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->n:I

    if-nez v2, :cond_15

    .line 7473
    move-object/from16 v0, v22

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->l:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_17

    move-object/from16 v0, v22

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->j:I

    :goto_c
    move-object/from16 v0, v22

    iput v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->l:I

    .line 7474
    move-object/from16 v0, v22

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->m:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_18

    move-object/from16 v0, v22

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->k:I

    :goto_d
    move-object/from16 v0, v22

    iput v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->m:I

    .line 7476
    :cond_15
    const/high16 v17, -0x40800000    # -1.0f

    .line 7477
    move-object/from16 v0, v22

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->l:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_16

    move-object/from16 v0, v22

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->m:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_16

    .line 7478
    move-object/from16 v0, v22

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->k:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/google/android/exoplayer2/c/b/d$b;->l:I

    mul-int/2addr v2, v6

    int-to-float v2, v2

    move-object/from16 v0, v22

    iget v6, v0, Lcom/google/android/exoplayer2/c/b/d$b;->j:I

    move-object/from16 v0, v22

    iget v7, v0, Lcom/google/android/exoplayer2/c/b/d$b;->m:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    div-float v17, v2, v6

    .line 7480
    :cond_16
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v22

    iget v13, v0, Lcom/google/android/exoplayer2/c/b/d$b;->j:I

    move-object/from16 v0, v22

    iget v14, v0, Lcom/google/android/exoplayer2/c/b/d$b;->k:I

    const/16 v16, -0x1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/b/d$b;->o:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/exoplayer2/c/b/d$b;->p:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/b/d$b;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v20, v0

    move-object v11, v3

    move v12, v5

    move-object v15, v9

    invoke-static/range {v10 .. v20}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IF[BILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    goto/16 :goto_9

    .line 7473
    :cond_17
    move-object/from16 v0, v22

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->l:I

    goto :goto_c

    .line 7474
    :cond_18
    move-object/from16 v0, v22

    iget v2, v0, Lcom/google/android/exoplayer2/c/b/d$b;->m:I

    goto :goto_d

    .line 7483
    :cond_19
    const-string/jumbo v2, "application/x-subrip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 7484
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/b/d$b;->x:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/b/d$b;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v2, v3, v11, v4, v5}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    goto/16 :goto_9

    .line 7486
    :cond_1a
    const-string/jumbo v2, "application/vobsub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string/jumbo v2, "application/pgs"

    .line 7487
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 7488
    :cond_1b
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/b/d$b;->x:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/b/d$b;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v2, v3, v9, v4, v5}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    goto/16 :goto_9

    .line 7491
    :cond_1c
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "Unexpected MIME type."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2540
    :sswitch_21
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1d

    .line 2541
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "No valid tracks were found"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2543
    :cond_1d
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/b/d;->E:Lcom/google/android/exoplayer2/c/h;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/c/h;->b()V

    goto/16 :goto_0

    .line 2478
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_3
        0xae -> :sswitch_6
        0x4dbb -> :sswitch_1
        0x6240 -> :sswitch_4
        0x6d80 -> :sswitch_5
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_21
        0x1c53bb6b -> :sswitch_2
    .end sparse-switch

    .line 7349
    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_c
        -0x7ce7f3b0 -> :sswitch_a
        -0x76567dc0 -> :sswitch_1c
        -0x6a615338 -> :sswitch_17
        -0x672350af -> :sswitch_11
        -0x585f4fcd -> :sswitch_14
        -0x51dc40b2 -> :sswitch_f
        -0x2016c535 -> :sswitch_b
        -0x2016c4e5 -> :sswitch_d
        -0x19552dbd -> :sswitch_1f
        -0x1538b2ba -> :sswitch_1a
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_15
        0x3c030c5 -> :sswitch_18
        0x4e86155 -> :sswitch_7
        0x4e86156 -> :sswitch_8
        0x5e8da3e -> :sswitch_20
        0x1a8350d6 -> :sswitch_10
        0x2056f406 -> :sswitch_19
        0x2b453ce4 -> :sswitch_1d
        0x32fdf009 -> :sswitch_e
        0x54c61e47 -> :sswitch_1e
        0x6bd6c624 -> :sswitch_9
        0x7446132a -> :sswitch_16
        0x7446b0a6 -> :sswitch_1b
        0x744ad97d -> :sswitch_12
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
