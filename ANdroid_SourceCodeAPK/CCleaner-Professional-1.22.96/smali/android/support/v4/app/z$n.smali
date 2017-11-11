.class final Landroid/support/v4/app/z$n;
.super Landroid/support/v4/app/z$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Landroid/support/v4/app/z$l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/z$d;)Landroid/app/Notification;
    .locals 14

    .prologue
    .line 632
    new-instance v0, Landroid/support/v4/app/ae$a;

    iget-object v1, p1, Landroid/support/v4/app/z$d;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/z$d;->F:Landroid/app/Notification;

    .line 2843
    iget-object v3, p1, Landroid/support/v4/app/z$d;->b:Ljava/lang/CharSequence;

    .line 3833
    iget-object v4, p1, Landroid/support/v4/app/z$d;->c:Ljava/lang/CharSequence;

    .line 634
    iget-object v5, p1, Landroid/support/v4/app/z$d;->h:Ljava/lang/CharSequence;

    iget-object v6, p1, Landroid/support/v4/app/z$d;->f:Landroid/widget/RemoteViews;

    iget v7, p1, Landroid/support/v4/app/z$d;->i:I

    iget-object v8, p1, Landroid/support/v4/app/z$d;->d:Landroid/app/PendingIntent;

    iget-object v9, p1, Landroid/support/v4/app/z$d;->e:Landroid/app/PendingIntent;

    iget-object v10, p1, Landroid/support/v4/app/z$d;->g:Landroid/graphics/Bitmap;

    iget v11, p1, Landroid/support/v4/app/z$d;->p:I

    iget v12, p1, Landroid/support/v4/app/z$d;->q:I

    iget-boolean v13, p1, Landroid/support/v4/app/z$d;->r:Z

    invoke-direct/range {v0 .. v13}, Landroid/support/v4/app/ae$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    .line 637
    invoke-static {p1, v0}, Landroid/support/v4/app/z$e;->a(Landroid/support/v4/app/z$d;Landroid/support/v4/app/y;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
