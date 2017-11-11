.class public final Lcom/google/android/gms/internal/eg$b;
.super Lcom/google/android/gms/internal/pw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/pw",
        "<",
        "Lcom/google/android/gms/internal/eg$b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:[Lcom/google/android/gms/internal/eg$c;

.field public e:[Lcom/google/android/gms/internal/eg$a;

.field public f:[Lcom/google/android/gms/internal/ef$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/pw;-><init>()V

    .line 1000
    iput-object v1, p0, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/eg$b;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/eg$b;->c:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/eg$c;->b()[Lcom/google/android/gms/internal/eg$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    invoke-static {}, Lcom/google/android/gms/internal/eg$a;->b()[Lcom/google/android/gms/internal/eg$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    invoke-static {}, Lcom/google/android/gms/internal/ef$a;->b()[Lcom/google/android/gms/internal/ef$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    iput-object v1, p0, Lcom/google/android/gms/internal/eg$b;->ag:Lcom/google/android/gms/internal/py;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/eg$b;->ah:I

    .line 0
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/pw;->a()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/pv;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/eg$b;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/eg$b;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/pv;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_6

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v2

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    array-length v2, v2

    if-lez v2, :cond_a

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    aget-object v2, v2, v1

    if-eqz v2, :cond_9

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/pu;)Lcom/google/android/gms/internal/qc;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    .line 2000
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

    .line 3000
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->f()J

    move-result-wide v2

    .line 2000
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/eg$b;->b:Ljava/lang/String;

    goto :goto_0

    .line 4000
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->e()I

    move-result v0

    .line 2000
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/eg$b;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qf;->a(Lcom/google/android/gms/internal/pu;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/eg$c;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/eg$c;

    invoke-direct {v3}, Lcom/google/android/gms/internal/eg$c;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/eg$c;

    invoke-direct {v3}, Lcom/google/android/gms/internal/eg$c;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qf;->a(Lcom/google/android/gms/internal/pu;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/eg$a;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/eg$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/eg$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/gms/internal/eg$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/eg$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qf;->a(Lcom/google/android/gms/internal/pu;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/ef$a;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/google/android/gms/internal/ef$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ef$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/ef$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ef$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/pv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/pv;->b(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pv;->a(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    array-length v0, v0

    if-lez v0, :cond_8

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/pw;->a(Lcom/google/android/gms/internal/pv;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/eg$b;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/eg$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/eg$b;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/eg$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->c:Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/eg$b;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->c:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/eg$b;->c:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    iget-object v3, p1, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/qa;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/qa;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/qa;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, p1, Lcom/google/android/gms/internal/eg$b;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/eg$b;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->ag:Lcom/google/android/gms/internal/py;

    iget-object v1, p1, Lcom/google/android/gms/internal/eg$b;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/py;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->c:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->d:[Lcom/google/android/gms/internal/eg$c;

    invoke-static {v2}, Lcom/google/android/gms/internal/qa;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->e:[Lcom/google/android/gms/internal/eg$a;

    invoke-static {v2}, Lcom/google/android/gms/internal/qa;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->f:[Lcom/google/android/gms/internal/ef$a;

    invoke-static {v2}, Lcom/google/android/gms/internal/qa;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/eg$b;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/eg$b;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/eg$b;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/py;->hashCode()I

    move-result v1

    goto :goto_3
.end method
