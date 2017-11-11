.class public final Lf/i/c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/c$b;,
        Lf/i/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lf/i/c$a",
        "<TT;>;>;",
        "Lf/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public volatile a:Ljava/lang/Object;

.field b:Z

.field c:Lf/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/b",
            "<",
            "Lf/i/c$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field d:Lf/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/b",
            "<",
            "Lf/i/c$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field e:Lf/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/b",
            "<",
            "Lf/i/c$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field public final f:Lf/d/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lf/i/c$a;->e:Lf/i/c$a;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/i/c;->b:Z

    .line 44
    invoke-static {}, Lf/c/c;->a()Lf/c/c$b;

    move-result-object v0

    iput-object v0, p0, Lf/i/c;->c:Lf/c/b;

    .line 46
    invoke-static {}, Lf/c/c;->a()Lf/c/c$b;

    move-result-object v0

    iput-object v0, p0, Lf/i/c;->d:Lf/c/b;

    .line 48
    invoke-static {}, Lf/c/c;->a()Lf/c/c$b;

    move-result-object v0

    iput-object v0, p0, Lf/i/c;->e:Lf/c/b;

    .line 50
    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    move-result-object v0

    iput-object v0, p0, Lf/i/c;->f:Lf/d/a/d;

    .line 54
    return-void
.end method


# virtual methods
.method final a(Lf/i/c$b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/c$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lf/i/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/c$a;

    .line 114
    iget-boolean v1, v0, Lf/i/c$a;->a:Z

    if-eqz v1, :cond_2

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 1170
    :cond_2
    iget-object v6, v0, Lf/i/c$a;->b:[Lf/i/c$b;

    .line 1171
    array-length v7, v6

    .line 1172
    const/4 v1, 0x1

    if-ne v7, v1, :cond_3

    aget-object v1, v6, v5

    if-ne v1, p1, :cond_3

    .line 1173
    sget-object v1, Lf/i/c$a;->e:Lf/i/c$a;

    .line 118
    :goto_1
    if-eq v1, v0, :cond_1

    invoke-virtual {p0, v0, v1}, Lf/i/c;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1175
    :cond_3
    if-nez v7, :cond_4

    move-object v1, v0

    .line 1176
    goto :goto_1

    .line 1178
    :cond_4
    add-int/lit8 v1, v7, -0x1

    new-array v3, v1, [Lf/i/c$b;

    move v4, v5

    move v2, v5

    .line 1180
    :goto_2
    if-ge v4, v7, :cond_6

    .line 1181
    aget-object v8, v6, v4

    .line 1182
    if-eq v8, p1, :cond_9

    .line 1183
    add-int/lit8 v1, v7, -0x1

    if-ne v2, v1, :cond_5

    move-object v1, v0

    .line 1184
    goto :goto_1

    .line 1186
    :cond_5
    add-int/lit8 v1, v2, 0x1

    aput-object v8, v3, v2

    .line 1180
    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_2

    .line 1189
    :cond_6
    if-nez v2, :cond_7

    .line 1190
    sget-object v1, Lf/i/c$a;->e:Lf/i/c$a;

    goto :goto_1

    .line 1192
    :cond_7
    add-int/lit8 v1, v7, -0x1

    if-ge v2, v1, :cond_8

    .line 1193
    new-array v1, v2, [Lf/i/c$b;

    .line 1194
    invoke-static {v3, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1197
    :goto_4
    new-instance v2, Lf/i/c$a;

    iget-boolean v3, v0, Lf/i/c$a;->a:Z

    invoke-direct {v2, v3, v1}, Lf/i/c$a;-><init>(Z[Lf/i/c$b;)V

    move-object v1, v2

    goto :goto_1

    :cond_8
    move-object v1, v3

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_3
.end method

.method final a(Ljava/lang/Object;)[Lf/i/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lf/i/c$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    .line 2078
    iput-object p1, p0, Lf/i/c;->a:Ljava/lang/Object;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/i/c;->b:Z

    .line 142
    invoke-virtual {p0}, Lf/i/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/c$a;

    .line 143
    iget-boolean v0, v0, Lf/i/c$a;->a:Z

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lf/i/c$a;->c:[Lf/i/c$b;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lf/i/c$a;->d:Lf/i/c$a;

    invoke-virtual {p0, v0}, Lf/i/c;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/c$a;

    iget-object v0, v0, Lf/i/c$a;->b:[Lf/i/c$b;

    goto :goto_0
.end method

.method public final synthetic call(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 35
    check-cast p1, Lf/i;

    .line 3058
    new-instance v2, Lf/i/c$b;

    invoke-direct {v2, p1}, Lf/i/c$b;-><init>(Lf/i;)V

    .line 3069
    new-instance v0, Lf/i/c$1;

    invoke-direct {v0, p0, v2}, Lf/i/c$1;-><init>(Lf/i/c;Lf/i/c$b;)V

    invoke-static {v0}, Lf/j/d;->a(Lf/c/a;)Lf/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/i;->a(Lf/j;)V

    .line 3060
    iget-object v0, p0, Lf/i/c;->c:Lf/c/b;

    invoke-interface {v0, v2}, Lf/c/b;->call(Ljava/lang/Object;)V

    .line 3108
    iget-object v0, p1, Lf/i;->b:Lf/d/e/l;

    .line 4059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 3061
    if-nez v0, :cond_1

    .line 4095
    :cond_0
    invoke-virtual {p0}, Lf/i/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/c$a;

    .line 4096
    iget-boolean v3, v0, Lf/i/c$a;->a:Z

    if-eqz v3, :cond_2

    .line 4097
    iget-object v0, p0, Lf/i/c;->e:Lf/c/b;

    invoke-interface {v0, v2}, Lf/c/b;->call(Ljava/lang/Object;)V

    move v0, v1

    .line 3062
    :goto_0
    if-eqz v0, :cond_1

    .line 5108
    iget-object v0, p1, Lf/i;->b:Lf/d/e/l;

    .line 6059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 3062
    if-eqz v0, :cond_1

    .line 3063
    invoke-virtual {p0, v2}, Lf/i/c;->a(Lf/i/c$b;)V

    .line 35
    :cond_1
    return-void

    .line 4162
    :cond_2
    iget-object v3, v0, Lf/i/c$a;->b:[Lf/i/c$b;

    .line 4163
    array-length v3, v3

    .line 4164
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lf/i/c$b;

    .line 4165
    iget-object v5, v0, Lf/i/c$a;->b:[Lf/i/c$b;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4166
    aput-object v2, v4, v3

    .line 4167
    new-instance v3, Lf/i/c$a;

    iget-boolean v5, v0, Lf/i/c$a;->a:Z

    invoke-direct {v3, v5, v4}, Lf/i/c$a;-><init>(Z[Lf/i/c$b;)V

    .line 4101
    invoke-virtual {p0, v0, v3}, Lf/i/c;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4102
    iget-object v0, p0, Lf/i/c;->d:Lf/c/b;

    invoke-interface {v0, v2}, Lf/c/b;->call(Ljava/lang/Object;)V

    .line 4103
    const/4 v0, 0x1

    goto :goto_0
.end method
