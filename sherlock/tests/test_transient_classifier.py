import os
import nose
import shutil
import yaml
from sherlock import transient_classifier, cl_utils
from sherlock.utKit import utKit

from fundamentals import tools

su = tools(
    arguments={"settingsFile": None},
    docString=__doc__,
    logLevel="DEBUG",
    options_first=False,
    projectName="sherlock"
)
arguments, settings, log, dbConn = su.setup()

# # load settings
# stream = file(
#     "/Users/Dave/.config/sherlock/sherlock.yaml", 'r')
# settings = yaml.load(stream)
# stream.close()

# SETUP AND TEARDOWN FIXTURE FUNCTIONS FOR THE ENTIRE MODULE
moduleDirectory = os.path.dirname(__file__)
utKit = utKit(moduleDirectory)
log, dbConn, pathToInputDir, pathToOutputDir = utKit.setupModule()
utKit.tearDownModule()

# load settings
stream = file(
    pathToInputDir + "/example_settings2.yaml", 'r')
settings = yaml.load(stream)
stream.close()

import shutil
try:
    shutil.rmtree(pathToOutputDir)
except:
    pass
# COPY INPUT TO OUTPUT DIR
shutil.copytree(pathToInputDir, pathToOutputDir)

# Recursively create missing directories
if not os.path.exists(pathToOutputDir):
    os.makedirs(pathToOutputDir)

from fundamentals.mysql import directory_script_runner
directory_script_runner(
    log=log,
    pathToScriptDirectory=pathToInputDir.replace(
        "/input", "/resources") + "/transient_database",
    databaseName=settings["database settings"]["db"],
    loginPath=settings["database settings"]["loginPath"],
    successRule=False,
    failureRule="failed"
)

# xt-setup-unit-testing-files-and-folders


class test_transient_classifier():

    def test_transient_classifier_function(self):

        from sherlock import transient_classifier
        this = transient_classifier(
            log=log,
            settings=settings,
            update=True
        )
        this.classify()

    # def test_transient_classifier_single_source_function(self):

    #     from sherlock import transient_classifier
    #     this = transient_classifier(
    #         log=log,
    #         settings=settings,
    #         ra="08:57:57.19",
    #         dec="+43:25:44.1",
    #         name="PS17gx"
    #     )
    #     this.classify()

    # def test_get_transient_metadata_from_database_list(self):

    #     from sherlock import transient_classifier
    #     classifier = transient_classifier(
    #         log=log,
    #         settings=settings
    #     )
    #     transientsMetadataList = classifier._get_transient_metadata_from_database_list()
    #     classifier._update_ned_stream(
    #         transientsMetadataList=transientsMetadataList
    #     )

    # def test_crossmatching(self):

    #     # SETUP ALL DATABASE CONNECTIONS
    #     from sherlock import database
    #     db = database(
    #         log=log,
    #         settings=settings
    #     )
    #     dbConns = db.connect()
    #     transientsDbConn = dbConns["transients"]
    #     cataloguesDbConn = dbConns["catalogues"]
    #     pmDbConn = dbConns["marshall"]

    #     from sherlock.commonutils import get_crossmatch_catalogues_column_map
    #     colMaps = get_crossmatch_catalogues_column_map(
    #         log=log,
    #         dbConn=cataloguesDbConn
    #     )

    #     from sherlock import transient_classifier
    #     classifier = transient_classifier(
    #         log=log,
    #         settings=settings
    #     )
    #     transientsMetadataList = classifier._get_transient_metadata_from_database_list()
    #     classifications = classifier._crossmatch_transients_against_catalogues(
    #         colMaps=colMaps,
    #         transientsMetadataList=transientsMetadataList
    #     )

    #     classifier._update_transient_database(
    #         classifications=classifications,
    #         transientsMetadataList=transientsMetadataList,
    #         colMaps=colMaps
    #     )

    # def test_create_crossmatch_table_if_not_existing(self):

    #     from sherlock import transient_classifier
    #     this = transient_classifier(
    #         log=log,
    #         settings=settings
    #     )
    #     this._create_crossmatch_table_if_not_existing()

    def test_transient_classifier_function_exception(self):

        from sherlock import transient_classifier
        try:
            this = transient_classifier(
                log=log,
                settings=settings,
                fakeKey="break the code"
            )
            this.get()
            assert False
        except Exception, e:
            assert True
            print str(e)

        # x-print-testpage-for-pessto-marshall-web-object

    # x-class-to-test-named-worker-function