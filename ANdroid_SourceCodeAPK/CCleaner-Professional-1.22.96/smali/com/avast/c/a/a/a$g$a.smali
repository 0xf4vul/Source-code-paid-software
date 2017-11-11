.class public final Lcom/avast/c/a/a/a$g$a;
.super Lcom/google/a/g$a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/c/a/a/a$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/c/a/a/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/g$a",
        "<",
        "Lcom/avast/c/a/a/a$g;",
        "Lcom/avast/c/a/a/a$g$a;",
        ">;",
        "Lcom/avast/c/a/a/a$h;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/google/a/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1732
    invoke-direct {p0}, Lcom/google/a/g$a;-><init>()V

    .line 1809
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$g$a;->b:Lcom/google/a/c;

    .line 1734
    return-void
.end method

.method static synthetic e()Lcom/avast/c/a/a/a$g$a;
    .locals 1

    .prologue
    .line 3739
    new-instance v0, Lcom/avast/c/a/a/a$g$a;

    invoke-direct {v0}, Lcom/avast/c/a/a/a$g$a;-><init>()V

    .line 1727
    return-object v0
.end method

.method private f()Lcom/avast/c/a/a/a$g$a;
    .locals 2

    .prologue
    .line 2739
    new-instance v0, Lcom/avast/c/a/a/a$g$a;

    invoke-direct {v0}, Lcom/avast/c/a/a/a$g$a;-><init>()V

    .line 1750
    invoke-virtual {p0}, Lcom/avast/c/a/a/a$g$a;->a()Lcom/avast/c/a/a/a$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/c/a/a/a$g$a;->a(Lcom/avast/c/a/a/a$g;)Lcom/avast/c/a/a/a$g$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/avast/c/a/a/a$g;)Lcom/avast/c/a/a/a$g$a;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1778
    invoke-static {}, Lcom/avast/c/a/a/a$g;->a()Lcom/avast/c/a/a/a$g;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 1782
    :cond_0
    :goto_0
    return-object p0

    .line 3610
    :cond_1
    iget v1, p1, Lcom/avast/c/a/a/a$g;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_2

    .line 1779
    :goto_1
    if-eqz v0, :cond_0

    .line 3620
    iget-object v0, p1, Lcom/avast/c/a/a/a$g;->c:Lcom/google/a/c;

    .line 1780
    invoke-virtual {p0, v0}, Lcom/avast/c/a/a/a$g$a;->a(Lcom/google/a/c;)Lcom/avast/c/a/a/a$g$a;

    goto :goto_0

    .line 3610
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/a/c;)Lcom/avast/c/a/a/a$g$a;
    .locals 1

    .prologue
    .line 1838
    if-nez p1, :cond_0

    .line 1839
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1841
    :cond_0
    iget v0, p0, Lcom/avast/c/a/a/a$g$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/c/a/a/a$g$a;->a:I

    .line 1842
    iput-object p1, p0, Lcom/avast/c/a/a/a$g$a;->b:Lcom/google/a/c;

    .line 1844
    return-object p0
.end method

.method public final a()Lcom/avast/c/a/a/a$g;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1766
    new-instance v2, Lcom/avast/c/a/a/a$g;

    invoke-direct {v2, v1}, Lcom/avast/c/a/a/a$g;-><init>(C)V

    .line 1767
    iget v3, p0, Lcom/avast/c/a/a/a$g$a;->a:I

    .line 1769
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    .line 1772
    :goto_0
    iget-object v1, p0, Lcom/avast/c/a/a/a$g$a;->b:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$g;->a(Lcom/avast/c/a/a/a$g;Lcom/google/a/c;)Lcom/google/a/c;

    .line 1773
    invoke-static {v2, v0}, Lcom/avast/c/a/a/a$g;->a(Lcom/avast/c/a/a/a$g;I)I

    .line 1774
    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 1786
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic c()Lcom/google/a/g$a;
    .locals 1

    .prologue
    .line 1727
    invoke-direct {p0}, Lcom/avast/c/a/a/a$g$a;->f()Lcom/avast/c/a/a/a$g$a;

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
    .line 1727
    invoke-direct {p0}, Lcom/avast/c/a/a/a$g$a;->f()Lcom/avast/c/a/a/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 1727
    invoke-direct {p0}, Lcom/avast/c/a/a/a$g$a;->f()Lcom/avast/c/a/a/a$g$a;

    move-result-object v0

    return-object v0
.end method
