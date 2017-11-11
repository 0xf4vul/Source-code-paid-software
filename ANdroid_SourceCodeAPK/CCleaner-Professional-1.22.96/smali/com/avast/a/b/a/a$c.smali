.class public final Lcom/avast/a/b/a/a$c;
.super Lcom/google/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/a/b/a/a$c$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/n",
            "<",
            "Lcom/avast/a/b/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/avast/a/b/a/a$c;


# instance fields
.field b:I

.field public c:Ljava/lang/Object;

.field public d:J

.field private f:Ljava/lang/Object;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3274
    new-instance v0, Lcom/avast/a/b/a/a$c$1;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$c$1;-><init>()V

    sput-object v0, Lcom/avast/a/b/a/a$c;->a:Lcom/google/a/n;

    .line 3904
    new-instance v0, Lcom/avast/a/b/a/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/a/b/a/a$c;-><init>(B)V

    .line 3905
    sput-object v0, Lcom/avast/a/b/a/a$c;->e:Lcom/avast/a/b/a/a$c;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$c;->h()V

    .line 3906
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(B)V

    .line 3429
    iput-byte v1, p0, Lcom/avast/a/b/a/a$c;->g:B

    .line 3452
    iput v1, p0, Lcom/avast/a/b/a/a$c;->h:I

    .line 3215
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3216
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 3429
    iput-byte v0, p0, Lcom/avast/a/b/a/a$c;->g:B

    .line 3452
    iput v0, p0, Lcom/avast/a/b/a/a$c;->h:I

    .line 3216
    return-void
.end method

.method synthetic constructor <init>(C)V
    .locals 0

    .prologue
    .line 3208
    invoke-direct {p0}, Lcom/avast/a/b/a/a$c;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/a/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 3230
    invoke-direct {p0}, Lcom/google/a/g;-><init>()V

    .line 3429
    iput-byte v0, p0, Lcom/avast/a/b/a/a$c;->g:B

    .line 3452
    iput v0, p0, Lcom/avast/a/b/a/a$c;->h:I

    .line 3231
    invoke-direct {p0}, Lcom/avast/a/b/a/a$c;->h()V

    .line 3234
    const/4 v0, 0x0

    .line 3235
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 3236
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v2

    .line 3237
    sparse-switch v2, :sswitch_data_0

    .line 4071
    invoke-virtual {p1, v2}, Lcom/google/a/d;->b(I)Z

    move-result v2

    .line 3242
    if-nez v2, :cond_0

    move v0, v1

    .line 3244
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 3240
    goto :goto_0

    .line 3249
    :sswitch_1
    iget v2, p0, Lcom/avast/a/b/a/a$c;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/avast/a/b/a/a$c;->b:I

    .line 3250
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$c;->f:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3266
    :catch_0
    move-exception v0

    .line 5057
    :try_start_1
    iput-object p0, v0, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 3266
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3271
    :catchall_0
    move-exception v0

    throw v0

    .line 3254
    :sswitch_2
    :try_start_2
    iget v2, p0, Lcom/avast/a/b/a/a$c;->b:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/avast/a/b/a/a$c;->b:I

    .line 3255
    invoke-virtual {p1}, Lcom/google/a/d;->d()Lcom/google/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$c;->c:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/a/i; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3267
    :catch_1
    move-exception v0

    .line 3268
    :try_start_3
    new-instance v1, Lcom/google/a/i;

    .line 3269
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 6057
    iput-object p0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 3269
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3259
    :sswitch_3
    :try_start_4
    iget v2, p0, Lcom/avast/a/b/a/a$c;->b:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/avast/a/b/a/a$c;->b:I

    .line 4193
    invoke-virtual {p1}, Lcom/google/a/d;->g()J

    move-result-wide v2

    .line 3260
    iput-wide v2, p0, Lcom/avast/a/b/a/a$c;->d:J
    :try_end_4
    .catch Lcom/google/a/i; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 3272
    :cond_1
    return-void

    .line 3237
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/a/d;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 3208
    invoke-direct {p0, p1}, Lcom/avast/a/b/a/a$c;-><init>(Lcom/google/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$c;I)I
    .locals 0

    .prologue
    .line 3208
    iput p1, p0, Lcom/avast/a/b/a/a$c;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$c;J)J
    .locals 1

    .prologue
    .line 3208
    iput-wide p1, p0, Lcom/avast/a/b/a/a$c;->d:J

    return-wide p1
.end method

.method public static a()Lcom/avast/a/b/a/a$c;
    .locals 1

    .prologue
    .line 3220
    sget-object v0, Lcom/avast/a/b/a/a$c;->e:Lcom/avast/a/b/a/a$c;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$c;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3208
    iget-object v0, p0, Lcom/avast/a/b/a/a$c;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/b/a/a$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 3208
    iput-object p1, p0, Lcom/avast/a/b/a/a$c;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/b/a/a$c;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3208
    iget-object v0, p0, Lcom/avast/a/b/a/a$c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/a/b/a/a$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 3208
    iput-object p1, p0, Lcom/avast/a/b/a/a$c;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public static e()Lcom/avast/a/b/a/a$c$a;
    .locals 1

    .prologue
    .line 3534
    invoke-static {}, Lcom/avast/a/b/a/a$c$a;->e()Lcom/avast/a/b/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method private f()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/avast/a/b/a/a$c;->f:Ljava/lang/Object;

    .line 3334
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3335
    check-cast v0, Ljava/lang/String;

    .line 3336
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 3338
    iput-object v0, p0, Lcom/avast/a/b/a/a$c;->f:Ljava/lang/Object;

    .line 3341
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private g()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 3388
    iget-object v0, p0, Lcom/avast/a/b/a/a$c;->c:Ljava/lang/Object;

    .line 3389
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3390
    check-cast v0, Ljava/lang/String;

    .line 3391
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 3393
    iput-object v0, p0, Lcom/avast/a/b/a/a$c;->c:Ljava/lang/Object;

    .line 3396
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 3425
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$c;->f:Ljava/lang/Object;

    .line 3426
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/avast/a/b/a/a$c;->c:Ljava/lang/Object;

    .line 3427
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/a/b/a/a$c;->d:J

    .line 3428
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3440
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$c;->c()I

    .line 3441
    iget v0, p0, Lcom/avast/a/b/a/a$c;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3442
    invoke-direct {p0}, Lcom/avast/a/b/a/a$c;->f()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3444
    :cond_0
    iget v0, p0, Lcom/avast/a/b/a/a$c;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3445
    invoke-direct {p0}, Lcom/avast/a/b/a/a$c;->g()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3447
    :cond_1
    iget v0, p0, Lcom/avast/a/b/a/a$c;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 3448
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/avast/a/b/a/a$c;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/a/e;->a(IJ)V

    .line 3450
    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3431
    iget-byte v1, p0, Lcom/avast/a/b/a/a$c;->g:B

    .line 3432
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 3435
    :goto_0
    return v0

    .line 3432
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3434
    :cond_1
    iput-byte v0, p0, Lcom/avast/a/b/a/a$c;->g:B

    goto :goto_0
.end method

.method public final c()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3454
    iget v0, p0, Lcom/avast/a/b/a/a$c;->h:I

    .line 3455
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3471
    :goto_0
    return v0

    .line 3457
    :cond_0
    const/4 v0, 0x0

    .line 3458
    iget v1, p0, Lcom/avast/a/b/a/a$c;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3460
    invoke-direct {p0}, Lcom/avast/a/b/a/a$c;->f()Lcom/google/a/c;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3462
    :cond_1
    iget v1, p0, Lcom/avast/a/b/a/a$c;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 3464
    invoke-direct {p0}, Lcom/avast/a/b/a/a$c;->g()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3466
    :cond_2
    iget v1, p0, Lcom/avast/a/b/a/a$c;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 3467
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/avast/a/b/a/a$c;->d:J

    .line 3468
    invoke-static {v1, v2, v3}, Lcom/google/a/e;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3470
    :cond_3
    iput v0, p0, Lcom/avast/a/b/a/a$c;->h:I

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/avast/a/b/a/a$c;->f:Ljava/lang/Object;

    .line 3312
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3313
    check-cast v0, Ljava/lang/String;

    .line 3321
    :goto_0
    return-object v0

    .line 3315
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 3317
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 3318
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3319
    iput-object v1, p0, Lcom/avast/a/b/a/a$c;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3321
    goto :goto_0
.end method
