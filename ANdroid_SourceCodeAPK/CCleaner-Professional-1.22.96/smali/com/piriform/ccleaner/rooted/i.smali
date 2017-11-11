.class public final Lcom/piriform/ccleaner/rooted/i;
.super Landroid/support/v4/app/g;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/rooted/l$a;


# static fields
.field private static final aa:J

.field private static final ab:J


# instance fields
.field private ac:Landroid/app/AlertDialog;

.field private final ad:Landroid/content/DialogInterface$OnClickListener;

.field private final ae:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/piriform/ccleaner/rooted/i;->aa:J

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/piriform/ccleaner/rooted/i;->ab:J

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    .line 47
    new-instance v0, Lcom/piriform/ccleaner/rooted/i$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/rooted/i$1;-><init>(Lcom/piriform/ccleaner/rooted/i;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/rooted/i;->ad:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    new-instance v0, Lcom/piriform/ccleaner/rooted/i$2;

    sget-wide v2, Lcom/piriform/ccleaner/rooted/i;->ab:J

    sget-wide v4, Lcom/piriform/ccleaner/rooted/i;->aa:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/rooted/i$2;-><init>(Lcom/piriform/ccleaner/rooted/i;JJ)V

    iput-object v0, p0, Lcom/piriform/ccleaner/rooted/i;->ae:Landroid/os/CountDownTimer;

    return-void
.end method

.method public static I()Lcom/piriform/ccleaner/rooted/i;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/piriform/ccleaner/rooted/i;

    invoke-direct {v0}, Lcom/piriform/ccleaner/rooted/i;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/rooted/i;)Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/i;->ae:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 57
    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/i;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090019

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 57
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/rooted/i;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/piriform/ccleaner/rooted/i;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/rooted/i;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/i;->ac:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/rooted/i;)V
    .locals 2

    .prologue
    .line 1088
    new-instance v0, Lcom/piriform/ccleaner/rooted/k;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/rooted/k;-><init>(Lcom/piriform/ccleaner/rooted/l$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/rooted/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 19
    return-void
.end method


# virtual methods
.method public final F_()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v4/app/g;->F_()V

    .line 68
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/i;->ac:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/novoda/notils/b/a;

    const-string/jumbo v1, "Dialog reference can\'t be null in order to update countdown."

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/i;->ae:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 73
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/rooted/l;)V
    .locals 3

    .prologue
    .line 93
    .line 1025
    iget-boolean v0, p1, Lcom/piriform/ccleaner/rooted/l;->a:Z

    .line 93
    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/i;->g()Landroid/support/v4/app/i;

    move-result-object v0

    const v1, 0x7f0800f7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final b()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/i;->g()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f6

    .line 40
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-wide v2, Lcom/piriform/ccleaner/rooted/i;->ab:J

    .line 41
    invoke-direct {p0, v2, v3}, Lcom/piriform/ccleaner/rooted/i;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    iget-object v2, p0, Lcom/piriform/ccleaner/rooted/i;->ad:Landroid/content/DialogInterface$OnClickListener;

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/rooted/i;->ac:Landroid/app/AlertDialog;

    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/i;->ac:Landroid/app/AlertDialog;

    return-object v0
.end method
