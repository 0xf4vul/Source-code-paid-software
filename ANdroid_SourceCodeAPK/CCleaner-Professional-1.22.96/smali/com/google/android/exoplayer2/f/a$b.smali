.class final Lcom/google/android/exoplayer2/f/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field a:Lcom/google/android/exoplayer2/c/f;

.field private final b:[Lcom/google/android/exoplayer2/c/f;

.field private final c:Lcom/google/android/exoplayer2/c/h;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/c/f;Lcom/google/android/exoplayer2/c/h;)V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput-object p1, p0, Lcom/google/android/exoplayer2/f/a$b;->b:[Lcom/google/android/exoplayer2/c/f;

    .line 646
    iput-object p2, p0, Lcom/google/android/exoplayer2/f/a$b;->c:Lcom/google/android/exoplayer2/c/h;

    .line 647
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/c/g;)Lcom/google/android/exoplayer2/c/f;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$b;->a:Lcom/google/android/exoplayer2/c/f;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$b;->a:Lcom/google/android/exoplayer2/c/f;

    .line 681
    :goto_0
    return-object v0

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a$b;->b:[Lcom/google/android/exoplayer2/c/f;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 667
    :try_start_0
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/c/f;->a(Lcom/google/android/exoplayer2/c/g;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 668
    iput-object v3, p0, Lcom/google/android/exoplayer2/f/a$b;->a:Lcom/google/android/exoplayer2/c/f;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$b;->a:Lcom/google/android/exoplayer2/c/f;

    if-nez v0, :cond_3

    .line 678
    new-instance v0, Lcom/google/android/exoplayer2/f/b$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a$b;->b:[Lcom/google/android/exoplayer2/c/f;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/f/b$b;-><init>([Lcom/google/android/exoplayer2/c/f;)V

    throw v0

    .line 674
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 665
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 674
    :catch_0
    move-exception v3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->a()V

    throw v0

    .line 680
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$b;->a:Lcom/google/android/exoplayer2/c/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a$b;->c:Lcom/google/android/exoplayer2/c/h;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/c/f;->a(Lcom/google/android/exoplayer2/c/h;)V

    .line 681
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$b;->a:Lcom/google/android/exoplayer2/c/f;

    goto :goto_0
.end method
