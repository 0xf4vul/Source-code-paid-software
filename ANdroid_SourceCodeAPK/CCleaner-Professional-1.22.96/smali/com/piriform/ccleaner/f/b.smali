.class public final Lcom/piriform/ccleaner/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/f/b$a;
    }
.end annotation


# instance fields
.field final a:Lcom/piriform/ccleaner/f/b$a;

.field final b:F

.field c:F

.field private final d:Lcom/piriform/ccleaner/f/p$a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/p$a;F)V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/piriform/ccleaner/f/b;->d:Lcom/piriform/ccleaner/f/p$a;

    .line 15
    new-instance v1, Lcom/piriform/ccleaner/f/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/f/b$a;-><init>(B)V

    iput-object v1, p0, Lcom/piriform/ccleaner/f/b;->a:Lcom/piriform/ccleaner/f/b$a;

    .line 16
    const/4 v1, 0x0

    iput v1, p0, Lcom/piriform/ccleaner/f/b;->c:F

    .line 17
    const/high16 v1, 0x42c80000    # 100.0f

    .line 1021
    cmpg-float v2, p2, v0

    if-gez v2, :cond_0

    move p2, v0

    .line 17
    :cond_0
    div-float v0, v1, p2

    iput v0, p0, Lcom/piriform/ccleaner/f/b;->b:F

    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 40
    iget-object v0, p0, Lcom/piriform/ccleaner/f/b;->d:Lcom/piriform/ccleaner/f/p$a;

    iget v1, p0, Lcom/piriform/ccleaner/f/b;->c:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/piriform/ccleaner/f/b;->a:Lcom/piriform/ccleaner/f/b$a;

    .line 1068
    iget v2, v2, Lcom/piriform/ccleaner/f/b$a;->b:I

    .line 40
    iget-object v3, p0, Lcom/piriform/ccleaner/f/b;->a:Lcom/piriform/ccleaner/f/b$a;

    .line 2064
    iget-wide v4, v3, Lcom/piriform/ccleaner/f/b$a;->a:J

    .line 40
    invoke-interface {v0, v1, v2, v4, v5}, Lcom/piriform/ccleaner/f/p$a;->a(IIJ)V

    .line 41
    return-void
.end method

.method public final a(Ljava/util/Set;ZLcom/piriform/ccleaner/f/j;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;Z",
            "Lcom/piriform/ccleaner/f/j;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/piriform/ccleaner/f/b;->a:Lcom/piriform/ccleaner/f/b$a;

    .line 3072
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3073
    iget v1, v0, Lcom/piriform/ccleaner/f/b$a;->b:I

    .line 3239
    iget v2, p3, Lcom/piriform/ccleaner/f/j;->d:I

    .line 3073
    add-int/2addr v1, v2

    iput v1, v0, Lcom/piriform/ccleaner/f/b$a;->b:I

    .line 3074
    if-nez p2, :cond_0

    .line 3075
    iget-wide v2, v0, Lcom/piriform/ccleaner/f/b$a;->a:J

    .line 4231
    iget-wide v4, p3, Lcom/piriform/ccleaner/f/j;->c:J

    .line 3075
    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/piriform/ccleaner/f/b$a;->a:J

    .line 49
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/piriform/ccleaner/f/b;->c:F

    iget v1, p0, Lcom/piriform/ccleaner/f/b;->b:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/piriform/ccleaner/f/b;->c:F

    .line 45
    return-void
.end method
