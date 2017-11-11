.class public final Lcom/evernote/android/job/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/evernote/android/job/i;


# direct methods
.method private constructor <init>(Lcom/evernote/android/job/i;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 367
    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/i;B)V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/evernote/android/job/a$a;-><init>(Lcom/evernote/android/job/i;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 567
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 572
    :goto_0
    return v0

    .line 568
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 570
    :cond_2
    check-cast p1, Lcom/evernote/android/job/a$a;

    .line 572
    iget-object v0, p0, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    iget-object v1, p1, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    invoke-virtual {v0}, Lcom/evernote/android/job/i;->hashCode()I

    move-result v0

    return v0
.end method
