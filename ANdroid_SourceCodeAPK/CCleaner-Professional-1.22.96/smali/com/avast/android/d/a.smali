.class public Lcom/avast/android/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avast/android/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/avast/android/d/b;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "Alf"

    sput-object v0, Lcom/avast/android/d/a;->a:Ljava/lang/String;

    .line 249
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/avast/android/d/a;->b:Ljava/util/List;

    .line 254
    new-instance v0, Lcom/avast/android/d/a$1;

    invoke-direct {v0}, Lcom/avast/android/d/a$1;-><init>()V

    sput-object v0, Lcom/avast/android/d/a;->d:Lcom/avast/android/d/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/avast/android/d/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avast/android/d/a;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1160
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1161
    :cond_0
    const/4 v0, 0x1

    .line 1025
    :goto_0
    if-eqz v0, :cond_2

    .line 1026
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tag cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_2
    iput-object p1, p0, Lcom/avast/android/d/a;->c:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/avast/android/d/a;->d:Lcom/avast/android/d/b;

    iget-object v1, p0, Lcom/avast/android/d/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/avast/android/d/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/avast/android/d/a;->d:Lcom/avast/android/d/b;

    iget-object v1, p0, Lcom/avast/android/d/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/avast/android/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/avast/android/d/a;->d:Lcom/avast/android/d/b;

    iget-object v1, p0, Lcom/avast/android/d/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/avast/android/d/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/avast/android/d/a;->d:Lcom/avast/android/d/b;

    iget-object v1, p0, Lcom/avast/android/d/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/avast/android/d/b;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/avast/android/d/a;->d:Lcom/avast/android/d/b;

    iget-object v1, p0, Lcom/avast/android/d/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/avast/android/d/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public varargs c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/avast/android/d/a;->d:Lcom/avast/android/d/b;

    iget-object v1, p0, Lcom/avast/android/d/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/avast/android/d/b;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/avast/android/d/a;->d:Lcom/avast/android/d/b;

    iget-object v1, p0, Lcom/avast/android/d/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/avast/android/d/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lcom/avast/android/d/a;->d:Lcom/avast/android/d/b;

    iget-object v1, p0, Lcom/avast/android/d/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/avast/android/d/b;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/avast/android/d/a;->d:Lcom/avast/android/d/b;

    iget-object v1, p0, Lcom/avast/android/d/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/avast/android/d/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/avast/android/d/a;->d:Lcom/avast/android/d/b;

    iget-object v1, p0, Lcom/avast/android/d/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/avast/android/d/b;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    return-void
.end method
