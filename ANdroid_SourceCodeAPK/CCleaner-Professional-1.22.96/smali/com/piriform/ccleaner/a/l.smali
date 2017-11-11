.class public final Lcom/piriform/ccleaner/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/a/a;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/a/h;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/piriform/ccleaner/ui/activity/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/piriform/ccleaner/a/h;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/piriform/ccleaner/ui/activity/a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/app/Activity;

.field private final d:Lcom/piriform/ccleaner/s/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/piriform/ccleaner/a/h;->values()[Lcom/piriform/ccleaner/a/h;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/piriform/ccleaner/a/h;->values()[Lcom/piriform/ccleaner/a/h;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    .line 62
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->k:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CleanApkFilesActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->i:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CleanBluetoothFolderActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->d:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CleanCacheActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->a:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CleanCallLogActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->u:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CleanCustomFoldersActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->h:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CleanDownloadsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->s:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CleanEmptyFoldersActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->j:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CleanGooglePlaySearchHistoryActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->b:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CleanMessagesActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->f:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CleanProcessesActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->r:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CleanThumbnailCacheActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->n:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/cleaning/detail/CleanWhatsAppSentAudioActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->l:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/cleaning/detail/CleanWhatsAppSentImagesActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->m:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/cleaning/detail/CleanWhatsAppSentVideoActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->o:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/cleaning/detail/CleanWhatsAppVoiceNotesActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->p:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/cleaning/detail/CleanWhatsAppOldBackupsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->k:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/ApkFilesCleaningResultsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->i:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/BluetoothFolderCleaningResultsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->d:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CacheCleaningResultsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->a:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CallLogCleaningResultsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->u:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/CustomFoldersCleaningResultsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->h:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/DownloadsCleaningResultsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->s:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/EmptyFoldersCleaningResultsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->j:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/GooglePlayCleaningResultsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->b:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/MessagesCleaningResultsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->f:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/ProcessCleaningResultsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->r:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/ui/activity/ThumbnailCacheCleaningResultsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->n:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/cleaning/results/CleaningResultsWhatsAppSentAudioActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->l:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/cleaning/results/CleaningResultsWhatsAppSentImagesActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->m:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/cleaning/results/CleaningResultsWhatsAppSentVideoActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->o:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/cleaning/results/CleaningResultsWhatsAppVoiceNotesActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->p:Lcom/piriform/ccleaner/a/h;

    const-class v2, Lcom/piriform/ccleaner/cleaning/results/CleaningResultsWhatsAppOldBackupsActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/piriform/ccleaner/s/h;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/piriform/ccleaner/a/l;->c:Landroid/app/Activity;

    .line 99
    iput-object p2, p0, Lcom/piriform/ccleaner/a/l;->d:Lcom/piriform/ccleaner/s/h;

    .line 100
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/a/a/d;)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-interface {p1}, Lcom/piriform/ccleaner/a/a/d;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1125
    sget-object v0, Lcom/piriform/ccleaner/a/l;->b:Ljava/util/Map;

    invoke-interface {p1}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1126
    if-nez v0, :cond_0

    move-object v0, v1

    .line 2118
    :goto_0
    return-object v0

    .line 1126
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/l;->c:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    .line 132
    goto :goto_0

    .line 2110
    :cond_1
    invoke-interface {p1}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v0

    .line 2112
    sget-object v2, Lcom/piriform/ccleaner/a/h;->b:Lcom/piriform/ccleaner/a/h;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/piriform/ccleaner/a/l;->d:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v2}, Lcom/piriform/ccleaner/s/h;->g()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2113
    iget-object v0, p0, Lcom/piriform/ccleaner/a/l;->c:Landroid/app/Activity;

    .line 3104
    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3105
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 2114
    :cond_2
    sget-object v2, Lcom/piriform/ccleaner/a/h;->q:Lcom/piriform/ccleaner/a/h;

    if-ne v0, v2, :cond_3

    .line 2115
    check-cast p1, Lcom/piriform/ccleaner/a/a/u;

    .line 4078
    iget-object v0, p1, Lcom/piriform/ccleaner/a/a/u;->i:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 2117
    :cond_3
    sget-object v2, Lcom/piriform/ccleaner/a/l;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 2118
    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/l;->c:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    .line 134
    goto :goto_0
.end method
