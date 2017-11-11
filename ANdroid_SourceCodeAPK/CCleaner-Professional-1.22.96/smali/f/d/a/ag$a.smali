.class final Lf/d/a/ag$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/ag$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;"
    }
.end annotation


# static fields
.field static final c:I


# instance fields
.field final a:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lf/j/b;

.field d:I

.field volatile e:[Ljava/lang/Object;

.field f:Ljava/util/concurrent/atomic/AtomicLong;

.field private final g:Lf/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/g",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 176
    sget v0, Lf/d/e/i;->b:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lf/d/a/ag$a;->c:I

    return-void
.end method

.method public constructor <init>(Lf/i;Lf/c/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TR;>;",
            "Lf/c/g",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 174
    new-instance v0, Lf/j/b;

    invoke-direct {v0}, Lf/j/b;-><init>()V

    iput-object v0, p0, Lf/d/a/ag$a;->b:Lf/j/b;

    .line 184
    iput-object p1, p0, Lf/d/a/ag$a;->a:Lf/e;

    .line 185
    iput-object p2, p0, Lf/d/a/ag$a;->g:Lf/c/g;

    .line 186
    iget-object v0, p0, Lf/d/a/ag$a;->b:Lf/j/b;

    invoke-virtual {p1, v0}, Lf/i;->a(Lf/j;)V

    .line 187
    return-void
.end method


# virtual methods
.method final a()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    .line 215
    iget-object v4, p0, Lf/d/a/ag$a;->e:[Ljava/lang/Object;

    .line 216
    if-nez v4, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {p0}, Lf/d/a/ag$a;->getAndIncrement()J

    move-result-wide v2

    cmp-long v0, v2, v12

    if-nez v0, :cond_0

    .line 221
    array-length v5, v4

    .line 222
    iget-object v6, p0, Lf/d/a/ag$a;->a:Lf/e;

    .line 223
    iget-object v7, p0, Lf/d/a/ag$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 227
    :cond_2
    :goto_1
    new-array v8, v5, [Ljava/lang/Object;

    .line 228
    const/4 v2, 0x1

    move v3, v1

    .line 229
    :goto_2
    if-ge v3, v5, :cond_5

    .line 230
    aget-object v0, v4, v3

    check-cast v0, Lf/d/a/ag$a$a;

    iget-object v0, v0, Lf/d/a/ag$a$a;->a:Lf/d/e/i;

    .line 231
    invoke-virtual {v0}, Lf/d/e/i;->h()Ljava/lang/Object;

    move-result-object v0

    .line 233
    if-nez v0, :cond_3

    move v0, v1

    .line 229
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 238
    :cond_3
    invoke-static {v0}, Lf/d/e/i;->b(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 239
    invoke-interface {v6}, Lf/e;->onCompleted()V

    .line 242
    iget-object v0, p0, Lf/d/a/ag$a;->b:Lf/j/b;

    invoke-virtual {v0}, Lf/j/b;->b()V

    goto :goto_0

    .line 245
    :cond_4
    invoke-static {v0}, Lf/d/e/i;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v3

    move v0, v2

    goto :goto_3

    .line 249
    :cond_5
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    cmp-long v0, v10, v12

    if-lez v0, :cond_9

    if-eqz v2, :cond_9

    .line 252
    :try_start_0
    iget-object v0, p0, Lf/d/a/ag$a;->g:Lf/c/g;

    invoke-interface {v0, v8}, Lf/c/g;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Lf/e;->onNext(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 255
    iget v0, p0, Lf/d/a/ag$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf/d/a/ag$a;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    array-length v3, v4

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_7

    aget-object v0, v4, v2

    .line 262
    check-cast v0, Lf/d/a/ag$a$a;

    iget-object v0, v0, Lf/d/a/ag$a$a;->a:Lf/d/e/i;

    .line 263
    invoke-virtual {v0}, Lf/d/e/i;->g()Ljava/lang/Object;

    .line 265
    invoke-virtual {v0}, Lf/d/e/i;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lf/d/e/i;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 267
    invoke-interface {v6}, Lf/e;->onCompleted()V

    .line 269
    iget-object v0, p0, Lf/d/a/ag$a;->b:Lf/j/b;

    invoke-virtual {v0}, Lf/j/b;->b()V

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    invoke-static {v0, v6, v8}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 273
    :cond_7
    iget v0, p0, Lf/d/a/ag$a;->d:I

    sget v2, Lf/d/a/ag$a;->c:I

    if-le v0, v2, :cond_2

    .line 274
    array-length v3, v4

    move v2, v1

    :goto_5
    if-ge v2, v3, :cond_8

    aget-object v0, v4, v2

    .line 275
    check-cast v0, Lf/d/a/ag$a$a;

    iget v8, p0, Lf/d/a/ag$a;->d:I

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lf/d/a/ag$a$a;->b(J)V

    .line 274
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 277
    :cond_8
    iput v1, p0, Lf/d/a/ag$a;->d:I

    goto/16 :goto_1

    .line 283
    :cond_9
    invoke-virtual {p0}, Lf/d/a/ag$a;->decrementAndGet()J

    move-result-wide v2

    cmp-long v0, v2, v12

    if-gtz v0, :cond_2

    goto/16 :goto_0
.end method
