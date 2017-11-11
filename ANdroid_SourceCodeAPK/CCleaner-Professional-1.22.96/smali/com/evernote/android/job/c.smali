.class final Lcom/evernote/android/job/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ld/a/a/a/c;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/android/job/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/evernote/android/job/a/d;

    const-string/jumbo v1, "JobCreatorHolder"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/c;->b:Ld/a/a/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/c;->a:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/evernote/android/job/a;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Lcom/evernote/android/job/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/b;

    .line 36
    const/4 v1, 0x1

    .line 38
    invoke-interface {v0, p1}, Lcom/evernote/android/job/b;->a(Ljava/lang/String;)Lcom/evernote/android/job/a;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 44
    :goto_1
    if-nez v1, :cond_0

    .line 45
    sget-object v1, Lcom/evernote/android/job/c;->b:Ld/a/a/a/c;

    const-string/jumbo v3, "no JobCreator added"

    .line 1061
    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3, v2}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :cond_0
    return-object v0

    :cond_1
    move v5, v0

    move-object v0, v1

    move v1, v5

    goto :goto_1

    :cond_2
    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0
.end method
