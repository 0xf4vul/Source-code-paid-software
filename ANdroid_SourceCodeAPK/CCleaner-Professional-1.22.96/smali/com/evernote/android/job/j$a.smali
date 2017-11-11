.class final Lcom/evernote/android/job/j$a;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/evernote/android/job/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/evernote/android/job/j;


# direct methods
.method public constructor <init>(Lcom/evernote/android/job/j;)V
    .locals 1

    .prologue
    .line 396
    iput-object p1, p0, Lcom/evernote/android/job/j$a;->a:Lcom/evernote/android/job/j;

    .line 397
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 398
    return-void
.end method


# virtual methods
.method protected final synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 394
    check-cast p1, Ljava/lang/Integer;

    .line 1402
    iget-object v0, p0, Lcom/evernote/android/job/j$a;->a:Lcom/evernote/android/job/j;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/evernote/android/job/j;->b(Lcom/evernote/android/job/j;I)Lcom/evernote/android/job/i;

    move-result-object v0

    .line 394
    return-object v0
.end method
