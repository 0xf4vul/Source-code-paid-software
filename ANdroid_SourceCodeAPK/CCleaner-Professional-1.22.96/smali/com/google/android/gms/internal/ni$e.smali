.class public final Lcom/google/android/gms/internal/ni$e;
.super Lcom/google/android/gms/internal/pw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/pw",
        "<",
        "Lcom/google/android/gms/internal/ni$e;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/internal/ni$a;

.field public b:Lcom/google/android/gms/internal/ni$a;

.field public c:Lcom/google/android/gms/internal/ni$a;

.field public d:Lcom/google/android/gms/internal/ni$c;

.field public e:[Lcom/google/android/gms/internal/ni$f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/pw;-><init>()V

    .line 1000
    iput-object v1, p0, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    iput-object v1, p0, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    iput-object v1, p0, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    iput-object v1, p0, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    invoke-static {}, Lcom/google/android/gms/internal/ni$f;->b()[Lcom/google/android/gms/internal/ni$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    iput-object v1, p0, Lcom/google/android/gms/internal/ni$e;->ag:Lcom/google/android/gms/internal/py;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ni$e;->ah:I

    .line 0
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/pw;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    array-length v1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
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

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ni$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ni$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ni$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ni$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ni$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ni$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ni$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ni$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/qf;->a(Lcom/google/android/gms/internal/pu;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/ni$f;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/ni$f;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ni$f;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    array-length v0, v0

    goto :goto_1

    :cond_7
    new-instance v3, Lcom/google/android/gms/internal/ni$f;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ni$f;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/pv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    array-length v0, v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
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
    instance-of v2, p1, Lcom/google/android/gms/internal/ni$e;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ni$e;

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ni$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ni$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ni$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    iget-object v3, p1, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ni$c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    iget-object v3, p1, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/qa;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, p1, Lcom/google/android/gms/internal/ni$e;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/ni$e;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->ag:Lcom/google/android/gms/internal/py;

    iget-object v1, p1, Lcom/google/android/gms/internal/ni$e;->ag:Lcom/google/android/gms/internal/py;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    invoke-static {v2}, Lcom/google/android/gms/internal/qa;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$e;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ni$a;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ni$a;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ni$a;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ni$c;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ni$e;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/py;->hashCode()I

    move-result v1

    goto :goto_4
.end method
