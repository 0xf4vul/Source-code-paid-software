.class public final Lcom/avast/android/burger/a/b;
.super Lcom/avast/android/burger/a/k;
.source "SourceFile"


# static fields
.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avast/android/burger/a/b;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x40
        0x1
    .end array-data
.end method

.method private constructor <init>(I[BJ)V
    .locals 3

    .prologue
    .line 38
    .line 39
    invoke-static {}, Lcom/avast/android/burger/a/b;->a()Lcom/avast/android/burger/a/i$a;

    move-result-object v0

    sget-object v1, Lcom/avast/android/burger/a/b;->c:[I

    .line 40
    invoke-static {p1, v1}, Lcom/avast/android/burger/a/d;->a(I[I)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/burger/a/i$a;->a([I)Lcom/avast/android/burger/a/i$a;

    move-result-object v0

    .line 2373
    const/4 v1, 0x1

    iput v1, v0, Lcom/avast/android/burger/a/i$a;->d:I

    .line 42
    invoke-virtual {v0, p2}, Lcom/avast/android/burger/a/i$a;->a([B)Lcom/avast/android/burger/a/i$a;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0, p3, p4}, Lcom/avast/android/burger/a/k;-><init>(Lcom/avast/android/burger/a/i$a;J)V

    .line 45
    return-void
.end method

.method public static a(ILcom/avast/a/a/a/a/a$c$a;J)Lcom/avast/android/burger/a/b;
    .locals 2

    .prologue
    .line 56
    .line 3258
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/a$c$a;->a()Lcom/avast/a/a/a/a/a$c;

    move-result-object v0

    .line 3259
    invoke-virtual {v0}, Lcom/avast/a/a/a/a/a$c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3306
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    .line 3260
    throw v0

    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/avast/a/a/a/a/a$c;->s()[B

    move-result-object v0

    .line 57
    new-instance v1, Lcom/avast/android/burger/a/b;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/avast/android/burger/a/b;-><init>(I[BJ)V

    return-object v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 62
    .line 4069
    iget-object v0, p0, Lcom/avast/android/burger/a/i;->a:Lcom/avast/a/b/a/a$g;

    .line 62
    invoke-static {v0, v4}, Lcom/avast/android/burger/a/d;->a(Lcom/avast/a/b/a/a$g;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{\"contextInfoEvent\": {"

    .line 63
    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", \"blobType\":1,\"blob\": {"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5069
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/burger/a/i;->a:Lcom/avast/a/b/a/a$g;

    .line 5254
    iget-object v0, v0, Lcom/avast/a/b/a/a$g;->f:Lcom/google/a/c;

    .line 67
    invoke-static {v0}, Lcom/avast/a/a/a/a/a$c;->a(Lcom/google/a/c;)Lcom/avast/a/a/a/a/a$c;

    move-result-object v0

    .line 6120
    iget-object v0, v0, Lcom/avast/a/a/a/a/a$c;->c:Lcom/avast/a/a/a/a/a$a;

    .line 69
    const-string/jumbo v2, "\"boosterState\": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6543
    iget-boolean v3, v0, Lcom/avast/a/a/a/a/a$a;->c:Z

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"isSilent\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6567
    iget-boolean v3, v0, Lcom/avast/a/a/a/a/a$a;->d:Z

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"optimizationState\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6591
    iget-boolean v0, v0, Lcom/avast/a/a/a/a/a$a;->e:Z

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    const-string/jumbo v0, "}}}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    sget-object v2, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v3, "Unable to parse blob"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
