.class final Lcom/piriform/ccleaner/k/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/k/a/b;


# instance fields
.field private final a:Lcom/piriform/ccleaner/a/a/d;

.field private final b:F


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/a/a/d;F)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/piriform/ccleaner/k/a/i;->a:Lcom/piriform/ccleaner/a/a/d;

    .line 12
    iput p2, p0, Lcom/piriform/ccleaner/k/a/i;->b:F

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/k/a/a/a;)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/piriform/ccleaner/k/a/i;->a:Lcom/piriform/ccleaner/a/a/d;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->h()I

    move-result v0

    sget v1, Lcom/piriform/ccleaner/a/a/d$a;->a:I

    if-ne v0, v1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/piriform/ccleaner/k/a/i;->a:Lcom/piriform/ccleaner/a/a/d;

    invoke-interface {p1, v0}, Lcom/piriform/ccleaner/k/a/a/a;->a(Lcom/piriform/ccleaner/a/a/d;)V

    .line 20
    :cond_0
    iget v0, p0, Lcom/piriform/ccleaner/k/a/i;->b:F

    invoke-interface {p1, v0}, Lcom/piriform/ccleaner/k/a/a/a;->a(F)V

    .line 21
    return-void
.end method
