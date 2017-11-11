.class public final Lcom/avast/c/a/a/a$c$a;
.super Lcom/google/a/g$a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/c/a/a/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/c/a/a/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/g$a",
        "<",
        "Lcom/avast/c/a/a/a$c;",
        "Lcom/avast/c/a/a/a$c$a;",
        ">;",
        "Lcom/avast/c/a/a/a$d;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/avast/c/a/a/a$g;

.field public c:Lcom/avast/c/a/a/a$a;

.field private d:Lcom/google/a/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2188
    invoke-direct {p0}, Lcom/google/a/g$a;-><init>()V

    .line 2283
    invoke-static {}, Lcom/avast/c/a/a/a$g;->a()Lcom/avast/c/a/a/a$g;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/c/a/a/a$c$a;->b:Lcom/avast/c/a/a/a$g;

    .line 2344
    invoke-static {}, Lcom/avast/c/a/a/a$a;->a()Lcom/avast/c/a/a/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/c/a/a/a$c$a;->c:Lcom/avast/c/a/a/a$a;

    .line 2405
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/c/a/a/a$c$a;->d:Lcom/google/a/c;

    .line 2190
    return-void
.end method

.method static synthetic e()Lcom/avast/c/a/a/a$c$a;
    .locals 1

    .prologue
    .line 7195
    new-instance v0, Lcom/avast/c/a/a/a$c$a;

    invoke-direct {v0}, Lcom/avast/c/a/a/a$c$a;-><init>()V

    .line 2183
    return-object v0
.end method

.method private f()Lcom/avast/c/a/a/a$c$a;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3195
    new-instance v3, Lcom/avast/c/a/a/a$c$a;

    invoke-direct {v3}, Lcom/avast/c/a/a/a$c$a;-><init>()V

    .line 2210
    invoke-virtual {p0}, Lcom/avast/c/a/a/a$c$a;->a()Lcom/avast/c/a/a/a$c;

    move-result-object v4

    .line 3246
    invoke-static {}, Lcom/avast/c/a/a/a$c;->a()Lcom/avast/c/a/a/a$c;

    move-result-object v2

    if-eq v4, v2, :cond_8

    .line 4017
    iget v2, v4, Lcom/avast/c/a/a/a$c;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_2

    move v2, v0

    .line 3247
    :goto_0
    if-eqz v2, :cond_0

    .line 4023
    iget-object v2, v4, Lcom/avast/c/a/a/a$c;->c:Lcom/avast/c/a/a/a$g;

    .line 4322
    iget v5, v3, Lcom/avast/c/a/a/a$c$a;->a:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v0, :cond_3

    iget-object v5, v3, Lcom/avast/c/a/a/a$c$a;->b:Lcom/avast/c/a/a/a$g;

    invoke-static {}, Lcom/avast/c/a/a/a$g;->a()Lcom/avast/c/a/a/a$g;

    move-result-object v6

    if-eq v5, v6, :cond_3

    .line 4324
    iget-object v5, v3, Lcom/avast/c/a/a/a$c$a;->b:Lcom/avast/c/a/a/a$g;

    invoke-static {v5}, Lcom/avast/c/a/a/a$g;->a(Lcom/avast/c/a/a/a$g;)Lcom/avast/c/a/a/a$g$a;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/avast/c/a/a/a$g$a;->a(Lcom/avast/c/a/a/a$g;)Lcom/avast/c/a/a/a$g$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/c/a/a/a$g$a;->a()Lcom/avast/c/a/a/a$g;

    move-result-object v2

    iput-object v2, v3, Lcom/avast/c/a/a/a$c$a;->b:Lcom/avast/c/a/a/a$g;

    .line 4330
    :goto_1
    iget v2, v3, Lcom/avast/c/a/a/a$c$a;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/avast/c/a/a/a$c$a;->a:I

    .line 5033
    :cond_0
    iget v2, v4, Lcom/avast/c/a/a/a$c;->b:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v7, :cond_4

    move v2, v0

    .line 3250
    :goto_2
    if-eqz v2, :cond_1

    .line 5039
    iget-object v2, v4, Lcom/avast/c/a/a/a$c;->d:Lcom/avast/c/a/a/a$a;

    .line 5383
    iget v5, v3, Lcom/avast/c/a/a/a$c$a;->a:I

    and-int/lit8 v5, v5, 0x2

    if-ne v5, v7, :cond_5

    iget-object v5, v3, Lcom/avast/c/a/a/a$c$a;->c:Lcom/avast/c/a/a/a$a;

    invoke-static {}, Lcom/avast/c/a/a/a$a;->a()Lcom/avast/c/a/a/a$a;

    move-result-object v6

    if-eq v5, v6, :cond_5

    .line 5385
    iget-object v5, v3, Lcom/avast/c/a/a/a$c$a;->c:Lcom/avast/c/a/a/a$a;

    invoke-static {v5}, Lcom/avast/c/a/a/a$a;->a(Lcom/avast/c/a/a/a$a;)Lcom/avast/c/a/a/a$a$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/avast/c/a/a/a$a$b;->a(Lcom/avast/c/a/a/a$a;)Lcom/avast/c/a/a/a$a$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/c/a/a/a$a$b;->a()Lcom/avast/c/a/a/a$a;

    move-result-object v2

    iput-object v2, v3, Lcom/avast/c/a/a/a$c$a;->c:Lcom/avast/c/a/a/a$a;

    .line 5391
    :goto_3
    iget v2, v3, Lcom/avast/c/a/a/a$c$a;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v3, Lcom/avast/c/a/a/a$c$a;->a:I

    .line 6049
    :cond_1
    iget v2, v4, Lcom/avast/c/a/a/a$c;->b:I

    and-int/lit8 v2, v2, 0x4

    const/4 v5, 0x4

    if-ne v2, v5, :cond_6

    .line 3253
    :goto_4
    if-eqz v0, :cond_8

    .line 6055
    iget-object v0, v4, Lcom/avast/c/a/a/a$c;->e:Lcom/google/a/c;

    .line 6422
    if-nez v0, :cond_7

    .line 6423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    move v2, v1

    .line 4017
    goto :goto_0

    .line 4327
    :cond_3
    iput-object v2, v3, Lcom/avast/c/a/a/a$c$a;->b:Lcom/avast/c/a/a/a$g;

    goto :goto_1

    :cond_4
    move v2, v1

    .line 5033
    goto :goto_2

    .line 5388
    :cond_5
    iput-object v2, v3, Lcom/avast/c/a/a/a$c$a;->c:Lcom/avast/c/a/a/a$a;

    goto :goto_3

    :cond_6
    move v0, v1

    .line 6049
    goto :goto_4

    .line 6425
    :cond_7
    iget v1, v3, Lcom/avast/c/a/a/a$c$a;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v3, Lcom/avast/c/a/a/a$c$a;->a:I

    .line 6426
    iput-object v0, v3, Lcom/avast/c/a/a/a$c$a;->d:Lcom/google/a/c;

    .line 2210
    :cond_8
    return-object v3
.end method


# virtual methods
.method public final a()Lcom/avast/c/a/a/a$c;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2226
    new-instance v2, Lcom/avast/c/a/a/a$c;

    invoke-direct {v2, v1}, Lcom/avast/c/a/a/a$c;-><init>(C)V

    .line 2227
    iget v3, p0, Lcom/avast/c/a/a/a$c$a;->a:I

    .line 2229
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 2232
    :goto_0
    iget-object v1, p0, Lcom/avast/c/a/a/a$c$a;->b:Lcom/avast/c/a/a/a$g;

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$c;->a(Lcom/avast/c/a/a/a$c;Lcom/avast/c/a/a/a$g;)Lcom/avast/c/a/a/a$g;

    .line 2233
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 2234
    or-int/lit8 v0, v0, 0x2

    .line 2236
    :cond_0
    iget-object v1, p0, Lcom/avast/c/a/a/a$c$a;->c:Lcom/avast/c/a/a/a$a;

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$c;->a(Lcom/avast/c/a/a/a$c;Lcom/avast/c/a/a/a$a;)Lcom/avast/c/a/a/a$a;

    .line 2237
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 2238
    or-int/lit8 v0, v0, 0x4

    .line 2240
    :cond_1
    iget-object v1, p0, Lcom/avast/c/a/a/a$c$a;->d:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/c/a/a/a$c;->a(Lcom/avast/c/a/a/a$c;Lcom/google/a/c;)Lcom/google/a/c;

    .line 2241
    invoke-static {v2, v0}, Lcom/avast/c/a/a/a$c;->a(Lcom/avast/c/a/a/a$c;I)I

    .line 2242
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 2260
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic c()Lcom/google/a/g$a;
    .locals 1

    .prologue
    .line 2183
    invoke-direct {p0}, Lcom/avast/c/a/a/a$c$a;->f()Lcom/avast/c/a/a/a$c$a;

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
    .line 2183
    invoke-direct {p0}, Lcom/avast/c/a/a/a$c$a;->f()Lcom/avast/c/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 2183
    invoke-direct {p0}, Lcom/avast/c/a/a/a$c$a;->f()Lcom/avast/c/a/a/a$c$a;

    move-result-object v0

    return-object v0
.end method
