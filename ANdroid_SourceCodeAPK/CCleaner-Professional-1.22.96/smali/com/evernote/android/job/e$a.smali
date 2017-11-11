.class public final Lcom/evernote/android/job/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field a:Z

.field public b:Z

.field final synthetic c:Lcom/evernote/android/job/e;


# direct methods
.method private constructor <init>(Lcom/evernote/android/job/e;)V
    .locals 1

    .prologue
    .line 526
    iput-object p1, p0, Lcom/evernote/android/job/e$a;->c:Lcom/evernote/android/job/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evernote/android/job/e$a;->a:Z

    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evernote/android/job/e$a;->b:Z

    .line 529
    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/e;B)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/evernote/android/job/e$a;-><init>(Lcom/evernote/android/job/e;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/evernote/android/job/e$a;->b:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
