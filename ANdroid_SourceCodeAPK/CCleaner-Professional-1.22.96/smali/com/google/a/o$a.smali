.class final Lcom/google/a/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/a/o;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/a/k;


# direct methods
.method private constructor <init>(Lcom/google/a/c;)V
    .locals 1

    .prologue
    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/a/o$a;->a:Ljava/util/Stack;

    .line 709
    invoke-direct {p0, p1}, Lcom/google/a/o$a;->a(Lcom/google/a/c;)Lcom/google/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/o$a;->b:Lcom/google/a/k;

    .line 710
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/c;B)V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/google/a/o$a;-><init>(Lcom/google/a/c;)V

    return-void
.end method

.method private a(Lcom/google/a/c;)Lcom/google/a/k;
    .locals 2

    .prologue
    .line 714
    move-object v0, p1

    :goto_0
    instance-of v1, v0, Lcom/google/a/o;

    if-eqz v1, :cond_0

    .line 715
    check-cast v0, Lcom/google/a/o;

    .line 716
    iget-object v1, p0, Lcom/google/a/o$a;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-static {v0}, Lcom/google/a/o;->a(Lcom/google/a/o;)Lcom/google/a/c;

    move-result-object v0

    goto :goto_0

    .line 719
    :cond_0
    check-cast v0, Lcom/google/a/k;

    return-object v0
.end method

.method private b()Lcom/google/a/k;
    .locals 2

    .prologue
    .line 726
    :cond_0
    iget-object v0, p0, Lcom/google/a/o$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    const/4 v0, 0x0

    .line 731
    :goto_0
    return-object v0

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/google/a/o$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/o;

    invoke-static {v0}, Lcom/google/a/o;->b(Lcom/google/a/o;)Lcom/google/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/o$a;->a(Lcom/google/a/c;)Lcom/google/a/k;

    move-result-object v0

    .line 1135
    invoke-virtual {v0}, Lcom/google/a/c;->b()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 730
    :goto_1
    if-nez v1, :cond_0

    goto :goto_0

    .line 1135
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/google/a/k;
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/a/o$a;->b:Lcom/google/a/k;

    if-nez v0, :cond_0

    .line 748
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/google/a/o$a;->b:Lcom/google/a/k;

    .line 751
    invoke-direct {p0}, Lcom/google/a/o$a;->b()Lcom/google/a/k;

    move-result-object v1

    iput-object v1, p0, Lcom/google/a/o$a;->b:Lcom/google/a/k;

    .line 752
    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/a/o$a;->b:Lcom/google/a/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/google/a/o$a;->a()Lcom/google/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 756
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
