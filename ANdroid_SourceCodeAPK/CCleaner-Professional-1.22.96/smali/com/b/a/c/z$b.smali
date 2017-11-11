.class final Lcom/b/a/c/z$b;
.super Lcom/b/a/c/z$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/b/a/c/a/a/a;)V
    .locals 2

    .prologue
    .line 431
    const/4 v0, 0x4

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/b/a/c/z$j;

    invoke-direct {p0, v0, v1}, Lcom/b/a/c/z$j;-><init>(I[Lcom/b/a/c/z$j;)V

    .line 432
    iget-wide v0, p1, Lcom/b/a/c/a/a/a;->a:J

    iput-wide v0, p0, Lcom/b/a/c/z$b;->a:J

    .line 433
    iget-wide v0, p1, Lcom/b/a/c/a/a/a;->b:J

    iput-wide v0, p0, Lcom/b/a/c/z$b;->b:J

    .line 434
    iget-object v0, p1, Lcom/b/a/c/a/a/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/c/z$b;->c:Ljava/lang/String;

    .line 435
    iget-object v0, p1, Lcom/b/a/c/a/a/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/c/z$b;->d:Ljava/lang/String;

    .line 436
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .prologue
    .line 440
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/b/a/c/z$b;->a:J

    invoke-static {v0, v2, v3}, Lcom/b/a/c/e;->b(IJ)I

    move-result v0

    .line 441
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/b/a/c/z$b;->b:J

    invoke-static {v1, v2, v3}, Lcom/b/a/c/e;->b(IJ)I

    move-result v1

    .line 442
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/b/a/c/z$b;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/b/a/c/b;->a(Ljava/lang/String;)Lcom/b/a/c/b;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/b/a/c/e;->b(ILcom/b/a/c/b;)I

    move-result v2

    .line 444
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/b/a/c/z$b;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/b/a/c/b;->a(Ljava/lang/String;)Lcom/b/a/c/b;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/b/a/c/e;->b(ILcom/b/a/c/b;)I

    move-result v3

    .line 447
    add-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0
.end method

.method public final a(Lcom/b/a/c/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/b/a/c/z$b;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/b/a/c/e;->a(IJ)V

    .line 453
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/b/a/c/z$b;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/b/a/c/e;->a(IJ)V

    .line 454
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/b/a/c/z$b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/b/a/c/b;->a(Ljava/lang/String;)Lcom/b/a/c/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/c/e;->a(ILcom/b/a/c/b;)V

    .line 455
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/b/a/c/z$b;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/b/a/c/b;->a(Ljava/lang/String;)Lcom/b/a/c/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/c/e;->a(ILcom/b/a/c/b;)V

    .line 456
    return-void
.end method
