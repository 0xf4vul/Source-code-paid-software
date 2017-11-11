.class public final Lf/i/a;
.super Lf/i/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i/b",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/Object;


# instance fields
.field public final b:Lf/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/c",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final c:Lf/d/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lf/i/a;->d:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lf/d$a;Lf/i/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d$a",
            "<TT;>;",
            "Lf/i/c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lf/i/b;-><init>(Lf/d$a;)V

    .line 76
    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    move-result-object v0

    iput-object v0, p0, Lf/i/a;->c:Lf/d/a/d;

    .line 121
    iput-object p2, p0, Lf/i/a;->b:Lf/i/c;

    .line 122
    return-void
.end method

.method public static d()Lf/i/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lf/i/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1103
    new-instance v0, Lf/i/c;

    invoke-direct {v0}, Lf/i/c;-><init>()V

    .line 1107
    new-instance v1, Lf/i/a$1;

    invoke-direct {v1, v0}, Lf/i/a$1;-><init>(Lf/i/c;)V

    iput-object v1, v0, Lf/i/c;->d:Lf/c/b;

    .line 1115
    iget-object v1, v0, Lf/i/c;->d:Lf/c/b;

    iput-object v1, v0, Lf/i/c;->e:Lf/c/b;

    .line 1116
    new-instance v1, Lf/i/a;

    invoke-direct {v1, v0, v0}, Lf/i/a;-><init>(Lf/d$a;Lf/i/c;)V

    .line 86
    return-object v1
.end method


# virtual methods
.method public final onCompleted()V
    .locals 5

    .prologue
    .line 126
    iget-object v0, p0, Lf/i/a;->b:Lf/i/c;

    .line 2082
    iget-object v0, v0, Lf/i/c;->a:Ljava/lang/Object;

    .line 127
    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/a;->b:Lf/i/c;

    iget-boolean v0, v0, Lf/i/c;->b:Z

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    invoke-static {}, Lf/d/a/d;->b()Ljava/lang/Object;

    move-result-object v1

    .line 129
    iget-object v0, p0, Lf/i/a;->b:Lf/i/c;

    invoke-virtual {v0, v1}, Lf/i/c;->a(Ljava/lang/Object;)[Lf/i/c$b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 130
    invoke-virtual {v4, v1}, Lf/i/c$b;->a(Ljava/lang/Object;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 137
    iget-object v0, p0, Lf/i/a;->b:Lf/i/c;

    .line 3082
    iget-object v0, v0, Lf/i/c;->a:Ljava/lang/Object;

    .line 138
    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/a;->b:Lf/i/c;

    iget-boolean v0, v0, Lf/i/c;->b:Z

    if-eqz v0, :cond_3

    .line 139
    :cond_0
    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 140
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lf/i/a;->b:Lf/i/c;

    invoke-virtual {v0, v2}, Lf/i/c;->a(Ljava/lang/Object;)[Lf/i/c$b;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 143
    :try_start_0
    invoke-virtual {v5, v2}, Lf/i/c$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v5

    .line 145
    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    :cond_2
    invoke-static {v0}, Lf/b/b;->a(Ljava/util/List;)V

    .line 154
    :cond_3
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lf/i/a;->b:Lf/i/c;

    .line 4082
    iget-object v0, v0, Lf/i/c;->a:Ljava/lang/Object;

    .line 159
    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/a;->b:Lf/i/c;

    iget-boolean v0, v0, Lf/i/c;->b:Z

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 161
    iget-object v0, p0, Lf/i/a;->b:Lf/i/c;

    .line 5078
    iput-object v1, v0, Lf/i/c;->a:Ljava/lang/Object;

    .line 4130
    invoke-virtual {v0}, Lf/i/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/c$a;

    iget-object v2, v0, Lf/i/c$a;->b:[Lf/i/c$b;

    .line 161
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 162
    invoke-virtual {v4, v1}, Lf/i/c$b;->a(Ljava/lang/Object;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    return-void
.end method
