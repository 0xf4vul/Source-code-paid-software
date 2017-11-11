.class public final Lcom/google/android/gms/internal/ni$c;
.super Lcom/google/android/gms/internal/pw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/pw",
        "<",
        "Lcom/google/android/gms/internal/ni$c;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/pw;-><init>()V

    .line 1000
    iput v0, p0, Lcom/google/android/gms/internal/ni$c;->a:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ni$c;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ni$c;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ni$c;->ag:Lcom/google/android/gms/internal/py;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ni$c;->ah:I

    .line 0
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    .line 0
    invoke-super {p0}, Lcom/google/android/gms/internal/pw;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ni$c;->a:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ni$c;->a:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pv;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ni$c;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 2000
    invoke-static {v1}, Lcom/google/android/gms/internal/pv;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 0
    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ni$c;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 3000
    invoke-static {v1}, Lcom/google/android/gms/internal/pv;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 0
    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/pu;)Lcom/google/android/gms/internal/qc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    .line 4000
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

    .line 5000
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->e()I

    move-result v0

    .line 4000
    iput v0, p0, Lcom/google/android/gms/internal/ni$c;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ni$c;->b:Z

    goto :goto_0

    .line 6000
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pu;->h()J

    move-result-wide v0

    .line 4000
    iput-wide v0, p0, Lcom/google/android/gms/internal/ni$c;->c:J

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/pv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ni$c;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/ni$c;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pv;->a(II)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ni$c;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ni$c;->b:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pv;->a(IZ)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ni$c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/ni$c;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/pv;->c(IJ)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/pw;->a(Lcom/google/android/gms/internal/pv;)V

    return-void
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
    instance-of v2, p1, Lcom/google/android/gms/internal/ni$c;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ni$c;

    iget v2, p0, Lcom/google/android/gms/internal/ni$c;->a:I

    iget v3, p1, Lcom/google/android/gms/internal/ni$c;->a:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ni$c;->b:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ni$c;->b:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/ni$c;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ni$c;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ni$c;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ni$c;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/ni$c;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/ni$c;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$c;->ag:Lcom/google/android/gms/internal/py;

    iget-object v1, p1, Lcom/google/android/gms/internal/ni$c;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/py;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ni$c;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ni$c;->b:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/ni$c;->c:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ni$c;->c:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$c;->ag:Lcom/google/android/gms/internal/py;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ni$c;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/py;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ni$c;->ag:Lcom/google/android/gms/internal/py;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/py;->hashCode()I

    move-result v0

    goto :goto_1
.end method
