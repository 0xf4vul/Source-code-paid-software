.class final Lf/d/a/ag$c;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i",
        "<[",
        "Lf/d;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final c:Lf/d/a/ag$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/ag$a",
            "<TR;>;"
        }
    .end annotation
.end field

.field final d:Lf/d/a/ag$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/ag$b",
            "<TR;>;"
        }
    .end annotation
.end field

.field e:Z

.field final synthetic f:Lf/d/a/ag;


# direct methods
.method public constructor <init>(Lf/d/a/ag;Lf/i;Lf/d/a/ag$a;Lf/d/a/ag$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TR;>;",
            "Lf/d/a/ag$a",
            "<TR;>;",
            "Lf/d/a/ag$b",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lf/d/a/ag$c;->f:Lf/d/a/ag;

    invoke-direct {p0}, Lf/i;-><init>()V

    .line 119
    iput-object p2, p0, Lf/d/a/ag$c;->a:Lf/i;

    .line 120
    iput-object p3, p0, Lf/d/a/ag$c;->c:Lf/d/a/ag$a;

    .line 121
    iput-object p4, p0, Lf/d/a/ag$c;->d:Lf/d/a/ag$b;

    .line 122
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lf/d/a/ag$c;->e:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lf/d/a/ag$c;->a:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    .line 130
    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lf/d/a/ag$c;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 109
    check-cast p1, [Lf/d;

    .line 1139
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    .line 1140
    :cond_0
    iget-object v0, p0, Lf/d/a/ag$c;->a:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    :cond_1
    return-void

    .line 1142
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/ag$c;->e:Z

    .line 1143
    iget-object v2, p0, Lf/d/a/ag$c;->c:Lf/d/a/ag$a;

    iget-object v3, p0, Lf/d/a/ag$c;->d:Lf/d/a/ag$b;

    .line 1191
    array-length v0, p1

    new-array v4, v0, [Ljava/lang/Object;

    move v0, v1

    .line 1192
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_3

    .line 1193
    new-instance v5, Lf/d/a/ag$a$a;

    invoke-direct {v5, v2}, Lf/d/a/ag$a$a;-><init>(Lf/d/a/ag$a;)V

    .line 1194
    aput-object v5, v4, v0

    .line 1195
    iget-object v6, v2, Lf/d/a/ag$a;->b:Lf/j/b;

    invoke-virtual {v6, v5}, Lf/j/b;->a(Lf/j;)V

    .line 1192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1198
    :cond_3
    iput-object v3, v2, Lf/d/a/ag$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1199
    iput-object v4, v2, Lf/d/a/ag$a;->e:[Ljava/lang/Object;

    .line 1201
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 1202
    aget-object v2, p1, v1

    aget-object v0, v4, v1

    check-cast v0, Lf/d/a/ag$a$a;

    invoke-virtual {v2, v0}, Lf/d;->a(Lf/i;)Lf/j;

    .line 1201
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
