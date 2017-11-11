.class final Lcom/google/a/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/google/a/o;

.field private final c:Lcom/google/a/o$a;

.field private d:Lcom/google/a/c$a;


# direct methods
.method private constructor <init>(Lcom/google/a/o;)V
    .locals 2

    .prologue
    .line 774
    iput-object p1, p0, Lcom/google/a/o$b;->b:Lcom/google/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    new-instance v0, Lcom/google/a/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/a/o$a;-><init>(Lcom/google/a/c;B)V

    iput-object v0, p0, Lcom/google/a/o$b;->c:Lcom/google/a/o$a;

    .line 776
    iget-object v0, p0, Lcom/google/a/o$b;->c:Lcom/google/a/o$a;

    invoke-virtual {v0}, Lcom/google/a/o$a;->a()Lcom/google/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/k;->a()Lcom/google/a/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/o$b;->d:Lcom/google/a/c$a;

    .line 777
    invoke-virtual {p1}, Lcom/google/a/o;->b()I

    move-result v0

    iput v0, p0, Lcom/google/a/o$b;->a:I

    .line 778
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/o;B)V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0, p1}, Lcom/google/a/o$b;-><init>(Lcom/google/a/o;)V

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/a/o$b;->d:Lcom/google/a/c$a;

    invoke-interface {v0}, Lcom/google/a/c$a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/google/a/o$b;->c:Lcom/google/a/o$a;

    invoke-virtual {v0}, Lcom/google/a/o$a;->a()Lcom/google/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/k;->a()Lcom/google/a/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/o$b;->d:Lcom/google/a/c$a;

    .line 792
    :cond_0
    iget v0, p0, Lcom/google/a/o$b;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/o$b;->a:I

    .line 793
    iget-object v0, p0, Lcom/google/a/o$b;->d:Lcom/google/a/c$a;

    invoke-interface {v0}, Lcom/google/a/c$a;->a()B

    move-result v0

    return v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/google/a/o$b;->a:I

    if-lez v0, :cond_0

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
    .line 768
    .line 1785
    invoke-virtual {p0}, Lcom/google/a/o$b;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 768
    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 797
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
