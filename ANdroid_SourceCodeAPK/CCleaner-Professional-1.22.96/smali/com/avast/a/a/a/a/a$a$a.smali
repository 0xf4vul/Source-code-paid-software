.class public final Lcom/avast/a/a/a/a/a$a$a;
.super Lcom/google/a/g$a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/a/a/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/a/a/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/g$a",
        "<",
        "Lcom/avast/a/a/a/a/a$a;",
        "Lcom/avast/a/a/a/a/a$a$a;",
        ">;",
        "Lcom/avast/a/a/a/a/a$b;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/google/a/g$a;-><init>()V

    .line 721
    return-void
.end method

.method static synthetic e()Lcom/avast/a/a/a/a/a$a$a;
    .locals 1

    .prologue
    .line 5726
    new-instance v0, Lcom/avast/a/a/a/a/a$a$a;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/a$a$a;-><init>()V

    .line 714
    return-object v0
.end method

.method private f()Lcom/avast/a/a/a/a/a$a$a;
    .locals 2

    .prologue
    .line 1726
    new-instance v0, Lcom/avast/a/a/a/a/a$a$a;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/a$a$a;-><init>()V

    .line 741
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/a$a$a;->a()Lcom/avast/a/a/a/a/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/a/a$a$a;->a(Lcom/avast/a/a/a/a/a$a;)Lcom/avast/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/avast/a/a/a/a/a$a;)Lcom/avast/a/a/a/a/a$a$a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 777
    invoke-static {}, Lcom/avast/a/a/a/a/a$a;->a()Lcom/avast/a/a/a/a/a$a;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-object p0

    .line 2533
    :cond_1
    iget v2, p1, Lcom/avast/a/a/a/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_4

    move v2, v0

    .line 778
    :goto_1
    if-eqz v2, :cond_2

    .line 2543
    iget-boolean v2, p1, Lcom/avast/a/a/a/a/a$a;->c:Z

    .line 2843
    iget v3, p0, Lcom/avast/a/a/a/a/a$a$a;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/avast/a/a/a/a/a$a$a;->a:I

    .line 2844
    iput-boolean v2, p0, Lcom/avast/a/a/a/a/a$a$a;->b:Z

    .line 3557
    :cond_2
    iget v2, p1, Lcom/avast/a/a/a/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    move v2, v0

    .line 781
    :goto_2
    if-eqz v2, :cond_3

    .line 3567
    iget-boolean v2, p1, Lcom/avast/a/a/a/a/a$a;->d:Z

    .line 3892
    iget v3, p0, Lcom/avast/a/a/a/a/a$a$a;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/avast/a/a/a/a/a$a$a;->a:I

    .line 3893
    iput-boolean v2, p0, Lcom/avast/a/a/a/a/a$a$a;->c:Z

    .line 4581
    :cond_3
    iget v2, p1, Lcom/avast/a/a/a/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 784
    :goto_3
    if-eqz v0, :cond_0

    .line 4591
    iget-boolean v0, p1, Lcom/avast/a/a/a/a/a$a;->e:Z

    .line 4941
    iget v1, p0, Lcom/avast/a/a/a/a/a$a$a;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/avast/a/a/a/a/a$a$a;->a:I

    .line 4942
    iput-boolean v0, p0, Lcom/avast/a/a/a/a/a$a$a;->d:Z

    goto :goto_0

    :cond_4
    move v2, v1

    .line 2533
    goto :goto_1

    :cond_5
    move v2, v1

    .line 3557
    goto :goto_2

    :cond_6
    move v0, v1

    .line 4581
    goto :goto_3
.end method

.method public final a()Lcom/avast/a/a/a/a/a$a;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 757
    new-instance v2, Lcom/avast/a/a/a/a/a$a;

    invoke-direct {v2, v1}, Lcom/avast/a/a/a/a/a$a;-><init>(C)V

    .line 758
    iget v3, p0, Lcom/avast/a/a/a/a/a$a$a;->a:I

    .line 760
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 763
    :goto_0
    iget-boolean v1, p0, Lcom/avast/a/a/a/a/a$a$a;->b:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/a$a;->a(Lcom/avast/a/a/a/a/a$a;Z)Z

    .line 764
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 765
    or-int/lit8 v0, v0, 0x2

    .line 767
    :cond_0
    iget-boolean v1, p0, Lcom/avast/a/a/a/a/a$a$a;->c:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/a$a;->b(Lcom/avast/a/a/a/a/a$a;Z)Z

    .line 768
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 769
    or-int/lit8 v0, v0, 0x4

    .line 771
    :cond_1
    iget-boolean v1, p0, Lcom/avast/a/a/a/a/a$a$a;->d:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/a$a;->c(Lcom/avast/a/a/a/a/a$a;Z)Z

    .line 772
    invoke-static {v2, v0}, Lcom/avast/a/a/a/a/a$a;->a(Lcom/avast/a/a/a/a/a$a;I)I

    .line 773
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 791
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic c()Lcom/google/a/g$a;
    .locals 1

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/avast/a/a/a/a/a$a$a;->f()Lcom/avast/a/a/a/a/a$a$a;

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
    .line 714
    invoke-direct {p0}, Lcom/avast/a/a/a/a/a$a$a;->f()Lcom/avast/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/avast/a/a/a/a/a$a$a;->f()Lcom/avast/a/a/a/a/a$a$a;

    move-result-object v0

    return-object v0
.end method
