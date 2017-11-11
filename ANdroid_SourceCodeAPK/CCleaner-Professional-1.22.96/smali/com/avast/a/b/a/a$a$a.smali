.class public final Lcom/avast/a/b/a/a$a$a;
.super Lcom/google/a/g$a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/g$a",
        "<",
        "Lcom/avast/a/b/a/a$a;",
        "Lcom/avast/a/b/a/a$a$a;",
        ">;",
        "Lcom/avast/a/b/a/a$b;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/avast/a/b/a/a$k;

.field private c:J

.field private d:J

.field private e:Lcom/google/a/c;

.field private f:Lcom/google/a/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9031
    invoke-direct {p0}, Lcom/google/a/g$a;-><init>()V

    .line 9144
    sget-object v0, Lcom/avast/a/b/a/a$k;->a:Lcom/avast/a/b/a/a$k;

    iput-object v0, p0, Lcom/avast/a/b/a/a$a$a;->b:Lcom/avast/a/b/a/a$k;

    .line 9294
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/a/b/a/a$a$a;->e:Lcom/google/a/c;

    .line 9382
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/a/b/a/a$a$a;->f:Lcom/google/a/c;

    .line 9033
    return-void
.end method

.method static synthetic f()Lcom/avast/a/b/a/a$a$a;
    .locals 1

    .prologue
    .line 13038
    new-instance v0, Lcom/avast/a/b/a/a$a$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$a$a;-><init>()V

    .line 9026
    return-object v0
.end method

.method private g()Lcom/avast/a/b/a/a$a$a;
    .locals 2

    .prologue
    .line 10038
    new-instance v0, Lcom/avast/a/b/a/a$a$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$a$a;-><init>()V

    .line 9057
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$a$a;->e()Lcom/avast/a/b/a/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/b/a/a$a$a;->a(Lcom/avast/a/b/a/a$a;)Lcom/avast/a/b/a/a$a$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/avast/a/b/a/a$a$a;
    .locals 1

    .prologue
    .line 9225
    iget v0, p0, Lcom/avast/a/b/a/a$a$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/b/a/a$a$a;->a:I

    .line 9226
    iput-wide p1, p0, Lcom/avast/a/b/a/a$a$a;->c:J

    .line 9228
    return-object p0
.end method

.method public final a(Lcom/avast/a/b/a/a$a;)Lcom/avast/a/b/a/a$a$a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 9101
    invoke-static {}, Lcom/avast/a/b/a/a$a;->a()Lcom/avast/a/b/a/a$a;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 9117
    :cond_0
    :goto_0
    return-object p0

    .line 10759
    :cond_1
    iget v2, p1, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_6

    move v2, v0

    .line 9102
    :goto_1
    if-eqz v2, :cond_2

    .line 10769
    iget-object v2, p1, Lcom/avast/a/b/a/a$a;->c:Lcom/avast/a/b/a/a$k;

    .line 9103
    invoke-virtual {p0, v2}, Lcom/avast/a/b/a/a$a$a;->a(Lcom/avast/a/b/a/a$k;)Lcom/avast/a/b/a/a$a$a;

    .line 10783
    :cond_2
    iget v2, p1, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    move v2, v0

    .line 9105
    :goto_2
    if-eqz v2, :cond_3

    .line 10793
    iget-wide v2, p1, Lcom/avast/a/b/a/a$a;->d:J

    .line 9106
    invoke-virtual {p0, v2, v3}, Lcom/avast/a/b/a/a$a$a;->a(J)Lcom/avast/a/b/a/a$a$a;

    .line 10807
    :cond_3
    iget v2, p1, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    move v2, v0

    .line 9108
    :goto_3
    if-eqz v2, :cond_4

    .line 10817
    iget-wide v2, p1, Lcom/avast/a/b/a/a$a;->e:J

    .line 11274
    iget v4, p0, Lcom/avast/a/b/a/a$a$a;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/avast/a/b/a/a$a$a;->a:I

    .line 11275
    iput-wide v2, p0, Lcom/avast/a/b/a/a$a$a;->d:J

    .line 11840
    :cond_4
    iget v2, p1, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    move v2, v0

    .line 9111
    :goto_4
    if-eqz v2, :cond_5

    .line 11859
    iget-object v2, p1, Lcom/avast/a/b/a/a$a;->f:Lcom/google/a/c;

    .line 9112
    invoke-virtual {p0, v2}, Lcom/avast/a/b/a/a$a$a;->a(Lcom/google/a/c;)Lcom/avast/a/b/a/a$a$a;

    .line 11873
    :cond_5
    iget v2, p1, Lcom/avast/a/b/a/a$a;->b:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_a

    .line 9114
    :goto_5
    if-eqz v0, :cond_0

    .line 11883
    iget-object v0, p1, Lcom/avast/a/b/a/a$a;->g:Lcom/google/a/c;

    .line 12411
    if-nez v0, :cond_b

    .line 12412
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_6
    move v2, v1

    .line 10759
    goto :goto_1

    :cond_7
    move v2, v1

    .line 10783
    goto :goto_2

    :cond_8
    move v2, v1

    .line 10807
    goto :goto_3

    :cond_9
    move v2, v1

    .line 11840
    goto :goto_4

    :cond_a
    move v0, v1

    .line 11873
    goto :goto_5

    .line 12414
    :cond_b
    iget v1, p0, Lcom/avast/a/b/a/a$a$a;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/avast/a/b/a/a$a$a;->a:I

    .line 12415
    iput-object v0, p0, Lcom/avast/a/b/a/a$a$a;->f:Lcom/google/a/c;

    goto :goto_0
.end method

.method public final a(Lcom/avast/a/b/a/a$k;)Lcom/avast/a/b/a/a$a$a;
    .locals 1

    .prologue
    .line 9173
    if-nez p1, :cond_0

    .line 9174
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9176
    :cond_0
    iget v0, p0, Lcom/avast/a/b/a/a$a$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/b/a/a$a$a;->a:I

    .line 9177
    iput-object p1, p0, Lcom/avast/a/b/a/a$a$a;->b:Lcom/avast/a/b/a/a$k;

    .line 9179
    return-object p0
.end method

.method public final a(Lcom/google/a/c;)Lcom/avast/a/b/a/a$a$a;
    .locals 1

    .prologue
    .line 9350
    if-nez p1, :cond_0

    .line 9351
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9353
    :cond_0
    iget v0, p0, Lcom/avast/a/b/a/a$a$a;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/b/a/a$a$a;->a:I

    .line 9354
    iput-object p1, p0, Lcom/avast/a/b/a/a$a$a;->e:Lcom/google/a/c;

    .line 9356
    return-object p0
.end method

.method public final a()Lcom/avast/a/b/a/a$a;
    .locals 2

    .prologue
    .line 9065
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$a$a;->e()Lcom/avast/a/b/a/a$a;

    move-result-object v0

    .line 9066
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10306
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    .line 9067
    throw v0

    .line 9069
    :cond_0
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 9121
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic c()Lcom/google/a/g$a;
    .locals 1

    .prologue
    .line 9026
    invoke-direct {p0}, Lcom/avast/a/b/a/a$a$a;->g()Lcom/avast/a/b/a/a$a$a;

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
    .line 9026
    invoke-direct {p0}, Lcom/avast/a/b/a/a$a$a;->g()Lcom/avast/a/b/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 9026
    invoke-direct {p0}, Lcom/avast/a/b/a/a$a$a;->g()Lcom/avast/a/b/a/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/avast/a/b/a/a$a;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9073
    new-instance v2, Lcom/avast/a/b/a/a$a;

    invoke-direct {v2, v1}, Lcom/avast/a/b/a/a$a;-><init>(C)V

    .line 9074
    iget v3, p0, Lcom/avast/a/b/a/a$a$a;->a:I

    .line 9076
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    .line 9079
    :goto_0
    iget-object v1, p0, Lcom/avast/a/b/a/a$a$a;->b:Lcom/avast/a/b/a/a$k;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$a;->a(Lcom/avast/a/b/a/a$a;Lcom/avast/a/b/a/a$k;)Lcom/avast/a/b/a/a$k;

    .line 9080
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 9081
    or-int/lit8 v0, v0, 0x2

    .line 9083
    :cond_0
    iget-wide v4, p0, Lcom/avast/a/b/a/a$a$a;->c:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/b/a/a$a;->a(Lcom/avast/a/b/a/a$a;J)J

    .line 9084
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 9085
    or-int/lit8 v0, v0, 0x4

    .line 9087
    :cond_1
    iget-wide v4, p0, Lcom/avast/a/b/a/a$a$a;->d:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/b/a/a$a;->b(Lcom/avast/a/b/a/a$a;J)J

    .line 9088
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 9089
    or-int/lit8 v0, v0, 0x8

    .line 9091
    :cond_2
    iget-object v1, p0, Lcom/avast/a/b/a/a$a$a;->e:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$a;->a(Lcom/avast/a/b/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;

    .line 9092
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 9093
    or-int/lit8 v0, v0, 0x10

    .line 9095
    :cond_3
    iget-object v1, p0, Lcom/avast/a/b/a/a$a$a;->f:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$a;->b(Lcom/avast/a/b/a/a$a;Lcom/google/a/c;)Lcom/google/a/c;

    .line 9096
    invoke-static {v2, v0}, Lcom/avast/a/b/a/a$a;->a(Lcom/avast/a/b/a/a$a;I)I

    .line 9097
    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method
