.class public final Lcom/google/android/gms/internal/bs$a;
.super Lcom/google/android/gms/internal/pw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/pw",
        "<",
        "Lcom/google/android/gms/internal/bs$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/internal/bs$b;

.field public b:Lcom/google/android/gms/internal/bs$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/pw;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bs$a;->ah:I

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/pw;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bs$a;->a:Lcom/google/android/gms/internal/bs$b;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/bs$a;->a:Lcom/google/android/gms/internal/bs$b;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bs$a;->b:Lcom/google/android/gms/internal/bs$c;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/bs$a;->b:Lcom/google/android/gms/internal/bs$c;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pv;->b(ILcom/google/android/gms/internal/qc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/pu;)Lcom/google/android/gms/internal/qc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
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
    iget-object v0, p0, Lcom/google/android/gms/internal/bs$a;->a:Lcom/google/android/gms/internal/bs$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/bs$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bs$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bs$a;->a:Lcom/google/android/gms/internal/bs$b;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bs$a;->a:Lcom/google/android/gms/internal/bs$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bs$a;->b:Lcom/google/android/gms/internal/bs$c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/bs$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bs$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bs$a;->b:Lcom/google/android/gms/internal/bs$c;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bs$a;->b:Lcom/google/android/gms/internal/bs$c;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pu;->a(Lcom/google/android/gms/internal/qc;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/pv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/bs$a;->a:Lcom/google/android/gms/internal/bs$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/bs$a;->a:Lcom/google/android/gms/internal/bs$b;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bs$a;->b:Lcom/google/android/gms/internal/bs$c;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/bs$a;->b:Lcom/google/android/gms/internal/bs$c;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pv;->a(ILcom/google/android/gms/internal/qc;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/pw;->a(Lcom/google/android/gms/internal/pv;)V

    return-void
.end method
