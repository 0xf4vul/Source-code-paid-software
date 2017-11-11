.class public final Lcom/avast/a/b/a/a$c$a;
.super Lcom/google/a/g$a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/g$a",
        "<",
        "Lcom/avast/a/b/a/a$c;",
        "Lcom/avast/a/b/a/a$c$a;",
        ">;",
        "Lcom/avast/a/b/a/a$d;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3557
    invoke-direct {p0}, Lcom/google/a/g$a;-><init>()V

    .line 3656
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$c$a;->b:Ljava/lang/Object;

    .line 3754
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$c$a;->c:Ljava/lang/Object;

    .line 3559
    return-void
.end method

.method static synthetic e()Lcom/avast/a/b/a/a$c$a;
    .locals 1

    .prologue
    .line 6564
    new-instance v0, Lcom/avast/a/b/a/a$c$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$c$a;-><init>()V

    .line 3552
    return-object v0
.end method

.method private f()Lcom/avast/a/b/a/a$c$a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4564
    new-instance v3, Lcom/avast/a/b/a/a$c$a;

    invoke-direct {v3}, Lcom/avast/a/b/a/a$c$a;-><init>()V

    .line 3579
    invoke-direct {p0}, Lcom/avast/a/b/a/a$c$a;->g()Lcom/avast/a/b/a/a$c;

    move-result-object v4

    .line 4615
    invoke-static {}, Lcom/avast/a/b/a/a$c;->a()Lcom/avast/a/b/a/a$c;

    move-result-object v2

    if-eq v4, v2, :cond_2

    .line 5301
    iget v2, v4, Lcom/avast/a/b/a/a$c;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_3

    move v2, v0

    .line 4616
    :goto_0
    if-eqz v2, :cond_0

    .line 4617
    iget v2, v3, Lcom/avast/a/b/a/a$c$a;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/avast/a/b/a/a$c$a;->a:I

    .line 4618
    invoke-static {v4}, Lcom/avast/a/b/a/a$c;->a(Lcom/avast/a/b/a/a$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/avast/a/b/a/a$c$a;->b:Ljava/lang/Object;

    .line 5356
    :cond_0
    iget v2, v4, Lcom/avast/a/b/a/a$c;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    move v2, v0

    .line 4621
    :goto_1
    if-eqz v2, :cond_1

    .line 4622
    iget v2, v3, Lcom/avast/a/b/a/a$c$a;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v3, Lcom/avast/a/b/a/a$c$a;->a:I

    .line 4623
    invoke-static {v4}, Lcom/avast/a/b/a/a$c;->b(Lcom/avast/a/b/a/a$c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v3, Lcom/avast/a/b/a/a$c$a;->c:Ljava/lang/Object;

    .line 5411
    :cond_1
    iget v2, v4, Lcom/avast/a/b/a/a$c;->b:I

    and-int/lit8 v2, v2, 0x4

    const/4 v5, 0x4

    if-ne v2, v5, :cond_5

    .line 4626
    :goto_2
    if-eqz v0, :cond_2

    .line 5421
    iget-wide v0, v4, Lcom/avast/a/b/a/a$c;->d:J

    .line 4627
    invoke-virtual {v3, v0, v1}, Lcom/avast/a/b/a/a$c$a;->a(J)Lcom/avast/a/b/a/a$c$a;

    .line 3579
    :cond_2
    return-object v3

    :cond_3
    move v2, v1

    .line 5301
    goto :goto_0

    :cond_4
    move v2, v1

    .line 5356
    goto :goto_1

    :cond_5
    move v0, v1

    .line 5411
    goto :goto_2
.end method

.method private g()Lcom/avast/a/b/a/a$c;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3595
    new-instance v2, Lcom/avast/a/b/a/a$c;

    invoke-direct {v2, v1}, Lcom/avast/a/b/a/a$c;-><init>(C)V

    .line 3596
    iget v3, p0, Lcom/avast/a/b/a/a$c$a;->a:I

    .line 3598
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 3601
    :goto_0
    iget-object v1, p0, Lcom/avast/a/b/a/a$c$a;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$c;->a(Lcom/avast/a/b/a/a$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3602
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 3603
    or-int/lit8 v0, v0, 0x2

    .line 3605
    :cond_0
    iget-object v1, p0, Lcom/avast/a/b/a/a$c$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$c;->b(Lcom/avast/a/b/a/a$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3606
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 3607
    or-int/lit8 v0, v0, 0x4

    .line 3609
    :cond_1
    iget-wide v4, p0, Lcom/avast/a/b/a/a$c$a;->d:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/b/a/a$c;->a(Lcom/avast/a/b/a/a$c;J)J

    .line 3610
    invoke-static {v2, v0}, Lcom/avast/a/b/a/a$c;->a(Lcom/avast/a/b/a/a$c;I)I

    .line 3611
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(J)Lcom/avast/a/b/a/a$c$a;
    .locals 1

    .prologue
    .line 3881
    iget v0, p0, Lcom/avast/a/b/a/a$c$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/b/a/a$c$a;->a:I

    .line 3882
    iput-wide p1, p0, Lcom/avast/a/b/a/a$c$a;->d:J

    .line 3884
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/avast/a/b/a/a$c$a;
    .locals 1

    .prologue
    .line 3714
    if-nez p1, :cond_0

    .line 3715
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3717
    :cond_0
    iget v0, p0, Lcom/avast/a/b/a/a$c$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/b/a/a$c$a;->a:I

    .line 3718
    iput-object p1, p0, Lcom/avast/a/b/a/a$c$a;->b:Ljava/lang/Object;

    .line 3720
    return-object p0
.end method

.method public final a()Lcom/avast/a/b/a/a$c;
    .locals 2

    .prologue
    .line 3587
    invoke-direct {p0}, Lcom/avast/a/b/a/a$c$a;->g()Lcom/avast/a/b/a/a$c;

    move-result-object v0

    .line 3588
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6306
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    .line 3589
    throw v0

    .line 3591
    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/avast/a/b/a/a$c$a;
    .locals 1

    .prologue
    .line 3812
    if-nez p1, :cond_0

    .line 3813
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3815
    :cond_0
    iget v0, p0, Lcom/avast/a/b/a/a$c$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/b/a/a$c$a;->a:I

    .line 3816
    iput-object p1, p0, Lcom/avast/a/b/a/a$c$a;->c:Ljava/lang/Object;

    .line 3818
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 3633
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic c()Lcom/google/a/g$a;
    .locals 1

    .prologue
    .line 3552
    invoke-direct {p0}, Lcom/avast/a/b/a/a$c$a;->f()Lcom/avast/a/b/a/a$c$a;

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
    .line 3552
    invoke-direct {p0}, Lcom/avast/a/b/a/a$c$a;->f()Lcom/avast/a/b/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 3552
    invoke-direct {p0}, Lcom/avast/a/b/a/a$c$a;->f()Lcom/avast/a/b/a/a$c$a;

    move-result-object v0

    return-object v0
.end method
